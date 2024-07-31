.class final Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;
.super Ljava/lang/Object;
.source "ScriptFinder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->run()V
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 261
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->findNext:Landroid/widget/ImageView;

    const-string v1, "binding.findNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->findPrevious:Landroid/widget/ImageView;

    const-string v2, "binding.findPrevious"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->searchPositionIndicator:Landroid/widget/TextView;

    const-string v2, "binding.searchPositionIndicator"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "binding.progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getProjectManager$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v1, v1, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->$activeScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v2, v2, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->$activeSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentSceneAndSprite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$2;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$findNext(Lorg/catrobat/catroid/ui/ScriptFinder;)V

    .line 270
    return-void
.end method
