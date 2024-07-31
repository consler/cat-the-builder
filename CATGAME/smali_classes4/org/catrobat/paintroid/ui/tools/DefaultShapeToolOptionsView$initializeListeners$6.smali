.class final Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$6;
.super Ljava/lang/Object;
.source "DefaultShapeToolOptionsView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;->initializeListeners()V
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$6;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView$initializeListeners$6;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    sget-object v1, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->STROKE:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;->access$onDrawTypeClicked(Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;)V

    return-void
.end method
