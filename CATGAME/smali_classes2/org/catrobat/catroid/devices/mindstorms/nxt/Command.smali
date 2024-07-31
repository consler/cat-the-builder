.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private commandData:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;Z)V
    .locals 2
    .param p1, "commandType"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;
    .param p2, "commandByte"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
    .param p3, "reply"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    .line 38
    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->getByte()B

    move-result v1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 43
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 1
    .param p1, "data"    # B

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    return-void
.end method

.method public append(I)V
    .locals 1
    .param p1, "data"    # I

    .line 55
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 56
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 57
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 58
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->append(B)V

    .line 59
    return-void
.end method

.method public append([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 52
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;

    .line 77
    .local v0, "command":Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;
    iget-object v1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getLength()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public getRawCommand()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->commandData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/Command;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
