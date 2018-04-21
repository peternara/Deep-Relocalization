#include <iostream>
#include <fstream>
#include <string>

#include <gflags/gflags.h>

#include "deep-relocalization/descriptor_index.pb.h"
#include "deep-relocalization/place-retrieval.h"

using namespace std;

DEFINE_string(
        map_name, "euroc_ml1",
        "Name of the map in `maps/`.");
DEFINE_string(
        model_name, "resnet50_delf_vlad_triplets_margin-02_proj-40_sq/",
        "Name of the Tensorflow model in `models/`.");
DEFINE_string(proto_name, "euroc_ml1_proto.pb",
        "Name of the exported index protobuf in `data/`.");

int main(int argc, char** argv) {
    google::ParseCommandLineFlags(&argc, &argv, true);
    string map_path = string(MAP_ROOT_PATH) + FLAGS_map_name;
    string model_path = string(MODEL_ROOT_PATH) + FLAGS_model_name;
    string proto_path = string(DATA_ROOT_PATH) + FLAGS_proto_name;

    deep_relocalization::proto::DescriptorIndex proto_index;
    proto_index.set_model_name(FLAGS_model_name);
    proto_index.set_data_name(FLAGS_map_name);

    PlaceRetrieval retrieval(model_path);
    retrieval.buildIndexFromMap(map_path, &proto_index);

    fstream output(proto_path, ios::out | ios::trunc | ios::binary);
    CHECK(proto_index.SerializeToOstream(&output));
}