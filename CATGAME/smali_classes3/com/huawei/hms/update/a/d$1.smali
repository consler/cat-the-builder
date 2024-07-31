.class Lcom/huawei/hms/update/a/d$1;
.super Lcom/huawei/hms/update/a/b;
.source "UpdateDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/update/a/d;->a(Ljava/io/File;ILjava/lang/String;)Lcom/huawei/hms/update/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/update/a/d;

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/a/d;Ljava/io/File;IILjava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/huawei/hms/update/a/d$1;->c:Lcom/huawei/hms/update/a/d;

    iput p4, p0, Lcom/huawei/hms/update/a/d$1;->a:I

    iput-object p5, p0, Lcom/huawei/hms/update/a/d$1;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/update/a/b;-><init>(Ljava/io/File;I)V

    .line 259
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/huawei/hms/update/a/d$1;->d:J

    .line 262
    iget-object p1, p0, Lcom/huawei/hms/update/a/d$1;->c:Lcom/huawei/hms/update/a/d;

    invoke-static {p1}, Lcom/huawei/hms/update/a/d;->a(Lcom/huawei/hms/update/a/d;)Lcom/huawei/hms/update/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/update/a/a;->b()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/update/a/d$1;->e:I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/huawei/hms/update/a/d$1;->c:Lcom/huawei/hms/update/a/d;

    invoke-static {v0}, Lcom/huawei/hms/update/a/d;->a(Lcom/huawei/hms/update/a/d;)Lcom/huawei/hms/update/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/update/a/d$1;->c:Lcom/huawei/hms/update/a/d;

    invoke-virtual {v1}, Lcom/huawei/hms/update/a/d;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/update/a/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/hms/update/a/a;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/huawei/hms/update/a/d$1;->c:Lcom/huawei/hms/update/a/d;

    iget v1, p0, Lcom/huawei/hms/update/a/d$1;->a:I

    const/16 v2, 0x834

    invoke-static {v0, v2, p1, v1}, Lcom/huawei/hms/update/a/d;->a(Lcom/huawei/hms/update/a/d;III)V

    .line 293
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/hms/update/a/b;->write([BII)V

    .line 268
    iget p1, p0, Lcom/huawei/hms/update/a/d$1;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/huawei/hms/update/a/d$1;->e:I

    .line 270
    const/high16 p2, 0xc800000

    if-le p1, p2, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 276
    iget-wide v0, p0, Lcom/huawei/hms/update/a/d$1;->d:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    .line 277
    iput-wide p1, p0, Lcom/huawei/hms/update/a/d$1;->d:J

    .line 278
    iget p1, p0, Lcom/huawei/hms/update/a/d$1;->e:I

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/a/d$1;->a(I)V

    .line 282
    :cond_1
    iget p1, p0, Lcom/huawei/hms/update/a/d$1;->e:I

    iget p2, p0, Lcom/huawei/hms/update/a/d$1;->a:I

    if-ne p1, p2, :cond_2

    .line 283
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/a/d$1;->a(I)V

    .line 285
    :cond_2
    return-void
.end method
