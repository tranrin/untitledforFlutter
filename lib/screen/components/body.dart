import 'package:flutter/material.dart';
import 'package:untitled3/screen/spash/constants.dart';
import 'package:untitled3/screen/components/comment.dart';
import 'package:untitled3/screen/components/product_specification.dart';
import 'package:untitled3/screen/components/rating.dart';
import '../../models/cartRequestResponse_Model.dart';
import '../../models/detailProduct_Model.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';


class Body extends StatelessWidget {
 // late Product? product;
 // late List<Images>? imagelist;
 // late List<DetailProduct>? detailProductList;
 //  late List<CommentRate>? listCommentRate;
// hanlde right here statefull  arguments right here
  // call objec from fetch api right here
  const Body({Key? key, required this.data}) : super(key: key);
  final detailproductresponse data;

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        ProductImages(data: data.imageList,),
        TopRoundedContainer(
          color: hexToColor("#F3F3F3"),
          child: Column(
            children: [
              TopRoundedContainer(
                color: hexToColor("#F3F3F3"),
                child: Column(
                  children: [
                    ProductDescription(
                      product:data.product,
                      pressOnSeeMore: () {},
                    ),
                    productspecification(deitailProductForSpecification: buildcheck(data.detailProductList),listdetail:data.detailProductList,IDUser: 1),
                    Rating(data:data.listCommentRate),
                    Comment(data:data.listCommentRate),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  List<DetailProduct> buildcheck(List<DetailProduct> list){
    List<DetailProduct>checklist=[];
    int tam=0;
    for(int i=0;i<list.length;i++){
      for(int k=0;k<checklist.length;k++)
      if(list[i].SpecificationProduct==checklist[k].SpecificationProduct){
        tam=tam+1;
        break;
      }
      if(tam==0){
        checklist.add(list[i]);
      }else{
        tam=0;
      }
    }
    return checklist;
  }

}
