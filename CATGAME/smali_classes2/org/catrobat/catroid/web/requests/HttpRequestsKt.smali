.class public final Lorg/catrobat/catroid/web/requests/HttpRequestsKt;
.super Ljava/lang/Object;
.source "HttpRequests.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "DEVICE_LANGUAGE",
        "",
        "FILE_UPLOAD_TAG",
        "FILE_UPLOAD_URL",
        "MEDIA_TYPE_ZIPFILE",
        "Lokhttp3/MediaType;",
        "PROJECT_CHECKSUM_TAG",
        "PROJECT_DESCRIPTION_TAG",
        "PROJECT_NAME_TAG",
        "USER_EMAIL",
        "createUploadRequest",
        "Lokhttp3/Request;",
        "uploadData",
        "Lorg/catrobat/catroid/transfers/project/ProjectUploadData;",
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
.field private static final DEVICE_LANGUAGE:Ljava/lang/String; = "deviceLanguage"

.field private static final FILE_UPLOAD_TAG:Ljava/lang/String; = "upload"

.field private static final FILE_UPLOAD_URL:Ljava/lang/String; = "https://upload.catrob.at/pocketcode/api/upload/upload.json"

.field private static final MEDIA_TYPE_ZIPFILE:Lokhttp3/MediaType;

.field private static final PROJECT_CHECKSUM_TAG:Ljava/lang/String; = "fileChecksum"

.field private static final PROJECT_DESCRIPTION_TAG:Ljava/lang/String; = "projectDescription"

.field private static final PROJECT_NAME_TAG:Ljava/lang/String; = "projectTitle"

.field private static final USER_EMAIL:Ljava/lang/String; = "userEmail"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "application/zip"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/web/requests/HttpRequestsKt;->MEDIA_TYPE_ZIPFILE:Lokhttp3/MediaType;

    return-void
.end method

.method public static final createUploadRequest(Lorg/catrobat/catroid/transfers/project/ProjectUploadData;)Lokhttp3/Request;
    .locals 4
    .param p0, "uploadData"    # Lorg/catrobat/catroid/transfers/project/ProjectUploadData;

    const-string v0, "uploadData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/catrobat/catroid/web/ServerCalls;->TAG:Ljava/lang/String;

    const-string v1, "Building request to upload to: https://upload.catrob.at/pocketcode/api/upload/upload.json"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    nop

    .line 66
    nop

    .line 53
    nop

    .line 65
    nop

    .line 53
    nop

    .line 64
    nop

    .line 53
    nop

    .line 63
    nop

    .line 53
    nop

    .line 62
    nop

    .line 53
    nop

    .line 61
    nop

    .line 53
    nop

    .line 60
    nop

    .line 53
    nop

    .line 59
    nop

    .line 53
    nop

    .line 55
    nop

    .line 53
    nop

    .line 54
    nop

    .line 53
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 54
    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 56
    nop

    .line 57
    sget-object v1, Lorg/catrobat/catroid/web/requests/HttpRequestsKt;->MEDIA_TYPE_ZIPFILE:Lokhttp3/MediaType;

    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getProjectArchive()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 55
    const-string v2, "upload"

    const-string v3, "upload.catrobat"

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getProjectName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "projectTitle"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getProjectDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "projectDescription"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userEmail"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getProjectArchive()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileChecksum"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceLanguage"

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 53
    nop

    .line 68
    .local v0, "requestBody":Lokhttp3/MultipartBody;
    nop

    .line 71
    nop

    .line 68
    nop

    .line 70
    nop

    .line 68
    nop

    .line 69
    nop

    .line 68
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 69
    const-string v2, "https://upload.catrob.at/pocketcode/api/upload/upload.json"

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 70
    move-object v2, v0

    check-cast v2, Lokhttp3/RequestBody;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const-string v2, "Request.Builder()\n      \u2026estBody)\n        .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    return-object v1
.end method
