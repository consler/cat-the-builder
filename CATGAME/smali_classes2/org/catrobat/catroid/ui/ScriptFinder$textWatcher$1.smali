.class public final Lorg/catrobat/catroid/ui/ScriptFinder$textWatcher$1;
.super Ljava/lang/Object;
.source "ScriptFinder.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ScriptFinder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "org/catrobat/catroid/ui/ScriptFinder$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "newText",
        "before",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ScriptFinder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ScriptFinder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/ScriptFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    const-string v0, "newText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$getSearchQuery$p(Lorg/catrobat/catroid/ui/ScriptFinder;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v1, p1}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$formatSearchQuery(Lorg/catrobat/catroid/ui/ScriptFinder;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$showNavigationButtons(Lorg/catrobat/catroid/ui/ScriptFinder;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$hideNavigationButtons(Lorg/catrobat/catroid/ui/ScriptFinder;)V

    .line 101
    :goto_0
    nop

    .line 102
    return-void
.end method
