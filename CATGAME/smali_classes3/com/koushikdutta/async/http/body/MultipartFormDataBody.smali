.class public Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
.super Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/BoundaryEmitter;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field contentType:Ljava/lang/String;

.field formData:Lcom/koushikdutta/async/http/Headers;

.field last:Lcom/koushikdutta/async/ByteBufferList;

.field lastName:Ljava/lang/String;

.field liner:Lcom/koushikdutta/async/LineEmitter;

.field mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation
.end field

.field totalToWrite:I

.field written:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    const-string v0, "multipart/form-data"

    .line 102
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    const-string v0, "multipart/form-data"

    .line 102
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "="

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "boundary"

    .line 108
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 110
    aget-object p1, v3, p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No boundary found for multipart/form-data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->report(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public addFilePart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 221
    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    return-void
.end method

.method public addPart(Lcom/koushikdutta/async/http/body/Part;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStringPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 225
    new-instance v0, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    return-void
.end method

.method public get()Lcom/koushikdutta/async/http/Multimap;
    .locals 2

    .line 237
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/Multimap;-><init>(Lcom/koushikdutta/async/http/Multimap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->get()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMultipartCallback()Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-object v0
.end method

.method handleLast()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public length()I
    .locals 8

    .line 198
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------------------------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/body/Part;

    .line 204
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->getRawHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryStart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    int-to-long v4, v1

    .line 207
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    const/4 v3, 0x2

    int-to-long v6, v3

    add-long/2addr v1, v6

    add-long/2addr v4, v1

    long-to-int v1, v4

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryEnd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    .line 210
    iput v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->totalToWrite:I

    return v1
.end method

.method protected onBoundaryEnd()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    return-void
.end method

.method protected onBoundaryStart()V
    .locals 3

    .line 64
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 65
    new-instance v1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 66
    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setMultipartCallback(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/future/Continuation;

    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;

    invoke-direct {v0, p0, p3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 142
    iget-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 143
    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    .line 151
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    goto :goto_0

    .line 169
    :cond_1
    new-instance p3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;

    invoke-direct {p3, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 179
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method
