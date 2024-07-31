.class public final enum Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
.super Ljava/lang/Enum;
.source "CommandByte.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum GET_BATTERY_LEVEL:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum GET_INPUT_VALUES:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field private static final LOOKUP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LS_GET_STATUS:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum LS_READ:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum LS_WRITE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum RESET_INPUT_SCALED_VALUE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum SET_INPUT_MODE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

.field public static final enum SET_OUTPUT_STATE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;


# instance fields
.field private commandByteValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 28
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "PLAY_TONE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "SET_OUTPUT_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_OUTPUT_STATE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 30
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "SET_INPUT_MODE"

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_INPUT_MODE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 31
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "GET_INPUT_VALUES"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v3, v8}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->GET_INPUT_VALUES:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 32
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "RESET_INPUT_SCALED_VALUE"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v5, v9}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->RESET_INPUT_SCALED_VALUE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 33
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "LS_WRITE"

    const/16 v10, 0xf

    invoke-direct {v0, v1, v7, v10}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_WRITE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 34
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "LS_GET_STATUS"

    const/4 v10, 0x6

    const/16 v11, 0xe

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_GET_STATUS:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "LS_READ"

    const/16 v11, 0x10

    invoke-direct {v0, v1, v8, v11}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_READ:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "GET_BATTERY_LEVEL"

    const/16 v11, 0xb

    invoke-direct {v0, v1, v9, v11}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->GET_BATTERY_LEVEL:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    const-string v1, "KEEP_ALIVE"

    const/16 v11, 0x9

    const/16 v12, 0xd

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->KEEP_ALIVE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 27
    const/16 v1, 0xa

    new-array v1, v1, [Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    sget-object v12, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->PLAY_TONE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v12, v1, v2

    sget-object v12, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_OUTPUT_STATE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v12, v1, v4

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->SET_INPUT_MODE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v4, v1, v6

    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->GET_INPUT_VALUES:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v4, v1, v3

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->RESET_INPUT_SCALED_VALUE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v3, v1, v5

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_WRITE:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v3, v1, v7

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_GET_STATUS:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v3, v1, v10

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LS_READ:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v3, v1, v8

    sget-object v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->GET_BATTERY_LEVEL:Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    aput-object v3, v1, v9

    aput-object v0, v1, v11

    sput-object v1, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LOOKUP:Landroid/util/SparseArray;

    .line 42
    invoke-static {}, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 43
    .local v3, "c":Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
    sget-object v4, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LOOKUP:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->commandByteValue:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .end local v3    # "c":Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "commandByteValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->commandByteValue:I

    .line 48
    return-void
.end method

.method public static getTypeByValue(B)Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
    .locals 2
    .param p0, "value"    # B

    .line 59
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    return-object v0
.end method

.method public static isMember(B)Z
    .locals 2
    .param p0, "memberToTest"    # B

    .line 55
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->LOOKUP:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;
    .locals 1

    .line 27
    sget-object v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->$VALUES:[Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;

    return-object v0
.end method


# virtual methods
.method public getByte()B
    .locals 1

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/devices/mindstorms/nxt/CommandByte;->commandByteValue:I

    int-to-byte v0, v0

    return v0
.end method
