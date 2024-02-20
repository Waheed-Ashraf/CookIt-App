import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cook_it_app/Core/widgets/custom_error_widget.dart';
import 'package:cook_it_app/Core/widgets/custom_loading_indicator.dart';
import 'package:cook_it_app/Featuers/HomePage/Presentation/Manager/MealDetailsCubit/meal_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliverAppBarSection extends StatelessWidget {
  const SliverAppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FadeIn(
        duration: const Duration(milliseconds: 500),
        child: ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black,
                Colors.black,
                Colors.transparent,
              ],
              stops: [0.0, 0.5, 1.0, 1.0],
            ).createShader(
              Rect.fromLTRB(0.0, 0.0, rect.width, rect.height),
            );
          },
          blendMode: BlendMode.dstIn,
          child: BlocBuilder<MealDetailsCubit, MealDetailsState>(
            builder: (context, state) {
              if (state is MealDetailsLoaded) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .5,
                  child: CachedNetworkImage(
                    imageUrl: (state.mealDetails.strMealThumb!),
                    fit: BoxFit.cover,
                  ),
                );
              } else if (state is MealDetailsError) {
                return CustomErrorWidget(errMessage: state.errorMessage);
              } else {
                return CustomLoadingIndicator(
                    hight: MediaQuery.of(context).size.height * .5);
              }
            },
          ),
        ),
      ),
    ]);
  }
}
