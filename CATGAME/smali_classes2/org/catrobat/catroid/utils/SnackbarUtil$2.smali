.class final Lorg/catrobat/catroid/utils/SnackbarUtil$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "SnackbarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/SnackbarUtil;->hintSnackbar(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$2;->val$resourceId:I

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 2
    .param p1, "snackbar"    # Lcom/google/android/material/snackbar/Snackbar;
    .param p2, "event"    # I

    .line 94
    invoke-static {}, Lorg/catrobat/catroid/utils/SnackbarUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$2;->val$resourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 86
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/utils/SnackbarUtil$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 2
    .param p1, "snackbar"    # Lcom/google/android/material/snackbar/Snackbar;

    .line 89
    invoke-static {}, Lorg/catrobat/catroid/utils/SnackbarUtil;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$2;->val$resourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/utils/SnackbarUtil$2;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
