.class Lorg/catrobat/catroid/transfers/MediaDownloadService$2;
.super Ljava/lang/Object;
.source "MediaDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/transfers/MediaDownloadService;->showToast(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/transfers/MediaDownloadService;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/transfers/MediaDownloadService;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/transfers/MediaDownloadService;

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService$2;->this$0:Lorg/catrobat/catroid/transfers/MediaDownloadService;

    iput p2, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService$2;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService$2;->this$0:Lorg/catrobat/catroid/transfers/MediaDownloadService;

    invoke-virtual {v0}, Lorg/catrobat/catroid/transfers/MediaDownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/transfers/MediaDownloadService$2;->val$messageId:I

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 105
    return-void
.end method
