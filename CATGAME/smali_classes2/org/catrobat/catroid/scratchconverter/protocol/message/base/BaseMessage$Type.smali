.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
.super Ljava/lang/Enum;
.source "BaseMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

.field public static final enum CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

.field public static final enum ERROR:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

.field public static final enum INFO:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

.field private static types:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private typeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->ERROR:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    const-string v1, "INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->INFO:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    .line 46
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    const-string v1, "CLIENT_ID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    .line 43
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    sget-object v5, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->ERROR:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    aput-object v5, v1, v2

    sget-object v5, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->INFO:Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->types:Landroid/util/SparseArray;

    .line 52
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 53
    .local v3, "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->types:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->typeID:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    .end local v3    # "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "typeID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->typeID:I

    .line 58
    return-void
.end method

.method public static valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
    .locals 1
    .param p0, "typeID"    # I

    .line 61
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->types:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;
    .locals 1

    .line 43
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;

    return-object v0
.end method


# virtual methods
.method public getTypeID()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/base/BaseMessage$Type;->typeID:I

    return v0
.end method
