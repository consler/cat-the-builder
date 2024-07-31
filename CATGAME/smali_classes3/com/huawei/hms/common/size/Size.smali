.class public Lcom/huawei/hms/common/size/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/huawei/hms/common/size/Size;->a:I

    .line 27
    iput p2, p0, Lcom/huawei/hms/common/size/Size;->b:I

    .line 28
    return-void
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/huawei/hms/common/size/Size;
    .locals 3

    .line 84
    :try_start_0
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 85
    if-gez v0, :cond_0

    .line 86
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    :cond_0
    new-instance v1, Lcom/huawei/hms/common/size/Size;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/huawei/hms/common/size/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 89
    :catch_0
    move-exception p0

    .line 90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size parses failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 54
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 55
    return v0

    .line 56
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 57
    return v1

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/huawei/hms/common/size/Size;

    if-eqz v2, :cond_3

    .line 59
    check-cast p1, Lcom/huawei/hms/common/size/Size;

    .line 60
    iget v2, p0, Lcom/huawei/hms/common/size/Size;->a:I

    iget v3, p1, Lcom/huawei/hms/common/size/Size;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/huawei/hms/common/size/Size;->b:I

    iget p1, p1, Lcom/huawei/hms/common/size/Size;->b:I

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 62
    :cond_3
    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/huawei/hms/common/size/Size;->b:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/huawei/hms/common/size/Size;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 70
    iget v0, p0, Lcom/huawei/hms/common/size/Size;->a:I

    .line 71
    iget v1, p0, Lcom/huawei/hms/common/size/Size;->b:I

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " Height is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method
