.class Lorg/catrobat/catroid/web/ServerCalls$UploadResponse;
.super Ljava/lang/Object;
.source "ServerCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/web/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadResponse"
.end annotation


# instance fields
.field answer:Ljava/lang/String;

.field projectId:Ljava/lang/String;

.field statusCode:I

.field token:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
