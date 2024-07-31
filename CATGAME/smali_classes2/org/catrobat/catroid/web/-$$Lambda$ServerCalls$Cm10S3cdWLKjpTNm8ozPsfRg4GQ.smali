.class public final synthetic Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/web/ServerCalls$UploadCallSuccessCallback;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/web/ServerCalls;

.field public final synthetic f$1:Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;

.field public final synthetic f$2:Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;

.field public final synthetic f$3:Lorg/catrobat/catroid/transfers/project/ProjectUploadData;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/web/ServerCalls;Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;Lorg/catrobat/catroid/transfers/project/ProjectUploadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$0:Lorg/catrobat/catroid/web/ServerCalls;

    iput-object p2, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$1:Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;

    iput-object p3, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$2:Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;

    iput-object p4, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$3:Lorg/catrobat/catroid/transfers/project/ProjectUploadData;

    return-void
.end method


# virtual methods
.method public final onSuccess(Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;)V
    .locals 4

    iget-object v0, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$0:Lorg/catrobat/catroid/web/ServerCalls;

    iget-object v1, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$1:Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;

    iget-object v2, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$2:Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;

    iget-object v3, p0, Lorg/catrobat/catroid/web/-$$Lambda$ServerCalls$Cm10S3cdWLKjpTNm8ozPsfRg4GQ;->f$3:Lorg/catrobat/catroid/transfers/project/ProjectUploadData;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/catrobat/catroid/web/ServerCalls;->lambda$uploadProject$0$ServerCalls(Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;Lorg/catrobat/catroid/transfers/project/ProjectUploadData;Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;)V

    return-void
.end method
