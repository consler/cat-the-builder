.class public Lname/antonsmirnov/firmata/FormatHelper;
.super Ljava/lang/Object;
.source "FormatHelper.java"


# static fields
.field private static final HEX_PREFIX:Ljava/lang/String; = "0x"

.field public static final QUOTE:Ljava/lang/String; = "\'"

.field public static final SPACE:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatBinary(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinary(ILjava/lang/StringBuilder;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected formatBinary(ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    return-void
.end method

.method public formatBinaryData([B)Ljava/lang/String;
    .locals 2
    .param p1, "binaryData"    # [B

    .line 48
    const-string v0, " "

    const-string v1, "\'"

    invoke-virtual {p0, p1, v0, v1, v1}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinaryData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatBinaryData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "binaryData"    # [B
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "postfix"    # Ljava/lang/String;

    .line 41
    array-length v0, p1

    new-array v0, v0, [I

    .line 42
    .local v0, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 43
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinaryData([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatBinaryData([I)Ljava/lang/String;
    .locals 2
    .param p1, "binaryData"    # [I

    .line 37
    const-string v0, " "

    const-string v1, "\'"

    invoke-virtual {p0, p1, v0, v1, v1}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinaryData([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatBinaryData([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "binaryData"    # [I
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "postfix"    # Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 28
    aget v2, p1, v1

    invoke-virtual {p0, v2, v0}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinary(ILjava/lang/StringBuilder;)V

    .line 29
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
