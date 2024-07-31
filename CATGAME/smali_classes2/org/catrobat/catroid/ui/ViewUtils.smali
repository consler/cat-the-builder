.class public final Lorg/catrobat/catroid/ui/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0002\u001a\u00020\u0003*\u0004\u0018\u00010\u0004\u001a\u000c\u0010\u0005\u001a\u00020\u0003*\u0004\u0018\u00010\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "WAIT_TIME",
        "",
        "hideKeyboard",
        "",
        "Landroid/view/View;",
        "showKeyboard",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final WAIT_TIME:J = 0x64L


# direct methods
.method public static final hideKeyboard(Landroid/view/View;)V
    .locals 5
    .param p0, "$this$hideKeyboard"    # Landroid/view/View;

    .line 46
    if-eqz p0, :cond_1

    move-object v0, p0

    .local v0, "it":Landroid/view/View;
    const/4 v1, 0x0

    .line 47
    .local v1, "$i$a$-let-ViewUtils$hideKeyboard$1":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 48
    .local v2, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 46
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-ViewUtils$hideKeyboard$1":I
    .end local v2    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 47
    .restart local v0    # "it":Landroid/view/View;
    .restart local v1    # "$i$a$-let-ViewUtils$hideKeyboard$1":I
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-ViewUtils$hideKeyboard$1":I
    :cond_1
    :goto_0
    return-void
.end method

.method public static final showKeyboard(Landroid/view/View;)V
    .locals 6
    .param p0, "$this$showKeyboard"    # Landroid/view/View;

    .line 36
    if-eqz p0, :cond_1

    move-object v0, p0

    .local v0, "it":Landroid/view/View;
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-let-ViewUtils$showKeyboard$1":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 38
    .local v2, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    new-instance v3, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;

    invoke-direct {v3, v0, v2}, Lorg/catrobat/catroid/ui/ViewUtils$showKeyboard$1$1;-><init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V

    check-cast v3, Ljava/lang/Runnable;

    .line 41
    const-wide/16 v4, 0x64

    .line 38
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-ViewUtils$showKeyboard$1":I
    .end local v2    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 37
    .restart local v0    # "it":Landroid/view/View;
    .restart local v1    # "$i$a$-let-ViewUtils$showKeyboard$1":I
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-ViewUtils$showKeyboard$1":I
    :cond_1
    :goto_0
    return-void
.end method
