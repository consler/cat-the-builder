.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

.field public static final enum BASE:Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

.field public static final enum JOB:Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

.field private static categoryTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    const-string v1, "BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->BASE:Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    .line 32
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    const-string v1, "JOB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->JOB:Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    .line 30
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->BASE:Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->categoryTypes:Landroid/util/SparseArray;

    .line 39
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 40
    .local v3, "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->categoryTypes:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->categoryID:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    .end local v3    # "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "categoryID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->categoryID:I

    .line 45
    return-void
.end method

.method public static valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    .locals 1
    .param p0, "categoryID"    # I

    .line 48
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->categoryTypes:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;
    .locals 1

    .line 30
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;

    return-object v0
.end method


# virtual methods
.method public getCategoryID()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/Message$CategoryType;->categoryID:I

    return v0
.end method
