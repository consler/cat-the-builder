.class final Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ViewUtils;->showKeyboard(Landroid/view/View;)V
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
.field final synthetic $inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic $it:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;->$it:Landroid/view/View;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;->$it:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;->$it:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 41
    return-void
.end method
