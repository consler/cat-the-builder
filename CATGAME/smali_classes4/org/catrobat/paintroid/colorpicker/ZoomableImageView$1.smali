.class final Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;
.super Ljava/lang/Object;
.source "ZoomableImageView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->setVisibility(I)V

    return-void
.end method
