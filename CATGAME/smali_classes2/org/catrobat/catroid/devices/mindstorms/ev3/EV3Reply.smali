.class public Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;
.super Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;
.source "EV3Reply.java"


# static fields
.field public static final MIN_REPLY_MESSAGE_LENGTH:I = 0x3

.field public static final NO_ERROR:B = 0x2t

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;-><init>([B)V

    .line 58
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;

    const-string v1, "Invalid EV3 Reply"

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCommandByte()B
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusByte()B
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public hasError()Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getStatusByte()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(I)Z
    .locals 4
    .param p1, "commandCounter"    # I

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->data:[B

    aget-byte v0, v0, v3

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public toHexString(Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;)Ljava/lang/String;
    .locals 4
    .param p1, "reply"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;

    .line 64
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/EV3Reply;->getData()[B

    move-result-object v0

    .line 65
    .local v0, "rawBytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "commandHexString":Ljava/lang/StringBuilder;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 68
    const-string v2, "null"

    return-object v2

    .line 71
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 72
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
