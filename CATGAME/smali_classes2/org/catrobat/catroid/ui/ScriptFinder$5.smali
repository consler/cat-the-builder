.class final Lorg/catrobat/catroid/ui/ScriptFinder$5;
.super Ljava/lang/Object;
.source "ScriptFinder.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ScriptFinder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "actionId",
        "",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "onEditorAction"
    }
    k = 0x3
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

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScriptFinder$5;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "$noName_0"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 108
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 110
    const-string v0, "keyEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$5;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$find(Lorg/catrobat/catroid/ui/ScriptFinder;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScriptFinder$5;->this$0:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->access$find(Lorg/catrobat/catroid/ui/ScriptFinder;)V

    .line 111
    :cond_1
    :goto_0
    nop

    .line 112
    const/4 v0, 0x0

    return v0
.end method
