.class final Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;
.super Ljava/lang/Object;
.source "DragAndDropListView.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0004*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/AdapterView;",
        "kotlin.jvm.PlatformType",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "<anonymous parameter 3>",
        "",
        "onItemClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;->this$0:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "$noName_3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;->this$0:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->access$getPresenter$p(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;)Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->onClickLayerAtPosition(ILandroid/view/View;)V

    .line 64
    :cond_0
    return-void
.end method
