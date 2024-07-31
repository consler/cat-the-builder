.class final Lorg/catrobat/catroid/utils/SnackbarUtil$1;
.super Ljava/lang/Object;
.source "SnackbarUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/SnackbarUtil;->hintSnackbar(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$1;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/SnackbarUtil$1;->val$messageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->setHintShown(Landroid/app/Activity;Ljava/lang/String;)V

    .line 83
    return-void
.end method
