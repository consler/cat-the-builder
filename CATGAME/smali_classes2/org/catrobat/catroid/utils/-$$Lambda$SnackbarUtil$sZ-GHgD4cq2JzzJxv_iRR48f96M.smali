.class public final synthetic Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;->f$0:Landroid/app/Activity;

    iput p2, p0, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;->f$0:Landroid/app/Activity;

    iget v1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lorg/catrobat/catroid/utils/SnackbarUtil;->lambda$showDisableHintsDialog$0(Landroid/app/Activity;ILandroid/content/DialogInterface;I)V

    return-void
.end method
