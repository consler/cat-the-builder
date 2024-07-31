.class final Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/MainActivity;->setTopBarListeners(Lorg/catrobat/paintroid/ui/viewholder/TopBarViewHolder;)V
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

    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "it"    # Landroid/view/View;

    .line 505
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Tool;->getToolType()Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/ToolType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;->setCheckMarkClicked(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.tools.implementation.TransformTool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$setTopBarListeners$3;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/MainActivity;->getToolReference()Lorg/catrobat/paintroid/tools/ToolReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/ToolReference;->getTool()Lorg/catrobat/paintroid/tools/Tool;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;

    .line 509
    .local v0, "tool":Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;->onClickOnButton()V

    .line 510
    .end local v0    # "tool":Lorg/catrobat/paintroid/tools/implementation/BaseToolWithShape;
    :cond_3
    return-void
.end method
