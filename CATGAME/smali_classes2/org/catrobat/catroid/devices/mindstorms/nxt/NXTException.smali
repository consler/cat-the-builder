.class public Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;
.super Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
.source "NXTException.java"


# instance fields
.field private final error:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;->error:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;)V
    .locals 3
    .param p1, "error"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    .param p2, "commandByte"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    const-string v1, "NXTException: Error caused by  \'%s\' on command \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;->error:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    .line 39
    return-void
.end method


# virtual methods
.method public getError()Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTException;->error:Lorg/catrobat/catroid/devices/mindstorms/nxt/NXTError$ErrorCode;

    return-object v0
.end method
