.class public final Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;
.super Ljava/lang/Object;
.source "NXTError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static checkForError(Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;I)V
    .locals 3
    .param p0, "reply"    # Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;
    .param p1, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->getLength()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 45
    return-void

    .line 42
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;

    sget-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->WrongNumberOfBytes:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->getCommandByte()B

    move-result v2

    invoke-static {v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->getTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;

    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->getStatusByte()B

    move-result v1

    invoke-static {v1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->getTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsReply;->getCommandByte()B

    move-result v2

    invoke-static {v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->getTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;-><init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;)V

    throw v0
.end method
