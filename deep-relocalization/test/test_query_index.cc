#include <iostream>
#include <fstream>
#include <string>

#include <glog/logging.h>
#include <vi-map/unique-id.h>
#include <aslam/common/timer.h>

#include "deep-relocalization/descriptor_index.pb.h"
#include "deep-relocalization/place-retrieval.h"

using namespace std;

int main () {
    string model_name = "resnet50_delf_vlad_triplets_margin-02_proj-40_sq";
    string model_path = string(MODEL_ROOT_PATH) + model_name;
    string proto_path = string(DATA_ROOT_PATH) + "euroc_ml1_proto.pb";
    string query_path = string(DATA_ROOT_PATH) + "euroc_sample.pgm";

    PlaceRetrieval retrieval(model_path);

    deep_relocalization::proto::DescriptorIndex proto_index;
    fstream input(proto_path, ios::in | ios::binary);
    CHECK(proto_index.ParseFromIstream(&input));
    CHECK_EQ(model_name, proto_index.model_name());
    retrieval.LoadIndex(proto_index);

    cv::Mat query_image = cv::imread(query_path);
    CHECK_NOTNULL(query_image.data);
    cvtColor(query_image, query_image, cv::COLOR_RGB2GRAY);

    vi_map::VisualFrameIdentifierList retrieved_frames;
    retrieval.RetrieveNearestNeighbors(query_image, 10, 1, &retrieved_frames);

    cout << "Retrieved " << retrieved_frames.size() << " frames." << endl;
    timing::Timing::Print(cout);
}
