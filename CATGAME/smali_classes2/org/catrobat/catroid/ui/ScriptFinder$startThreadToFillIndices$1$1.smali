.class final Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;
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

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 229
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->find:Landroid/widget/ImageView;

    const-string v1, "binding.find"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->findNext:Landroid/widget/ImageView;

    const-string v2, "binding.findNext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->findPrevious:Landroid/widget/ImageView;

    const-string v2, "binding.findPrevious"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/ScriptFinder$startThreadToFillIndices$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getBinding$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/databinding/ViewScriptFinderBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "binding.progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    return-void
.end method
