.class final Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/MainActivity;->setLayerMenuListeners(Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$2;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "it"    # Landroid/view/View;

    .line 493
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setLayerMenuListeners$2;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getLayerPresenter$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/presenter/LayerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->removeLayer()V

    return-void
.end method
