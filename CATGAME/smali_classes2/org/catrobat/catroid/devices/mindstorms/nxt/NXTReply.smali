.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;
.super Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;
.source "NXTReply.java"


# static fields
.field public static final INSUFFICIENT_REPLY_LENGTH_EXCEPTION_MESSAGE:Ljava/lang/String; = "Invalid NXT Reply! Message length is smaller than MIN_REPLY_MESSAGE_LENGTH."

.field public static final INVALID_COMMAND_BYTE_EXCEPTION_MESSAGE:Ljava/lang/String; = "Invalid NXT Reply! data[1] must be member of CommandByte."

.field public static final INVALID_FIRST_BYTE_EXCEPTION_MESSAGE:Ljava/lang/String; = "Invalid NXT Reply! First Byte must be REPLY_COMMAND."

.field public static final MIN_REPLY_MESSAGE_LENGTH:I = 0x3

.field public static final NO_ERROR:B

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;-><init>([B)V

    .line 64
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 68
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->isMember(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->REPLY_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->getByte()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;

    const-string v1, "Invalid NXT Reply! First Byte must be REPLY_COMMAND."

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;

    const-string v1, "Invalid NXT Reply! data[1] must be member of CommandByte."

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;

    const-string v1, "Invalid NXT Reply! Message length is smaller than MIN_REPLY_MESSAGE_LENGTH."

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCommandByte()B
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStatusByte()B
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTReply;->getStatusByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
