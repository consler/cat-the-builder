.class Landroidx/mediarouter/app/MediaRouteControllerDialog$7;
.super Landroid/view/animation/Animation;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

.field final synthetic val$endValue:I

.field final synthetic val$startValue:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;IILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 706
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    iput p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    iput-object p4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 709
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    iget v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 710
    .local v0, "height":I
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 711
    return-void
.end method
