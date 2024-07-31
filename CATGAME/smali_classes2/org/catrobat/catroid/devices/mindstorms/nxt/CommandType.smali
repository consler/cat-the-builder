.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;
.super Ljava/lang/Enum;
.source "CommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

.field public static final enum DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

.field public static final enum REPLY_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;


# instance fields
.field private commandTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    const-string v1, "DIRECT_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    .line 27
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    const-string v1, "REPLY_COMMAND"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->REPLY_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    .line 25
    new-array v1, v4, [Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->DIRECT_COMMAND:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandTypeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->commandTypeValue:I

    .line 33
    return-void
.end method

.method public static isMember(B)Z
    .locals 6
    .param p0, "memberToTest"    # B

    .line 40
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 41
    .local v4, "commandType":Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;
    invoke-virtual {v4}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->getByte()B

    move-result v5

    if-ne v5, p0, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 40
    .end local v4    # "commandType":Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 36
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandType;->commandTypeValue:I

    int-to-byte v0, v0

    return v0
.end method
