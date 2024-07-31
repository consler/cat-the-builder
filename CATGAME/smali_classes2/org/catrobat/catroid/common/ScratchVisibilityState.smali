.class public final enum Lorg/catrobat/catroid/common/ScratchVisibilityState;
.super Ljava/lang/Enum;
.source "ScratchVisibilityState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/common/ScratchVisibilityState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/common/ScratchVisibilityState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/catrobat/catroid/common/ScratchVisibilityState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PRIVATE:Lorg/catrobat/catroid/common/ScratchVisibilityState;

.field public static final enum PUBLIC:Lorg/catrobat/catroid/common/ScratchVisibilityState;

.field public static final enum UNKNOWN:Lorg/catrobat/catroid/common/ScratchVisibilityState;

.field private static visibilityStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/common/ScratchVisibilityState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private visibilityState:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/common/ScratchVisibilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->UNKNOWN:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 33
    new-instance v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    const-string v1, "PRIVATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/common/ScratchVisibilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->PRIVATE:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 34
    new-instance v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    const-string v1, "PUBLIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/common/ScratchVisibilityState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->PUBLIC:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 30
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/common/ScratchVisibilityState;

    sget-object v5, Lorg/catrobat/catroid/common/ScratchVisibilityState;->UNKNOWN:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    aput-object v5, v1, v2

    sget-object v5, Lorg/catrobat/catroid/common/ScratchVisibilityState;->PRIVATE:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/common/ScratchVisibilityState;->$VALUES:[Lorg/catrobat/catroid/common/ScratchVisibilityState;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->visibilityStates:Landroid/util/SparseArray;

    .line 40
    invoke-static {}, Lorg/catrobat/catroid/common/ScratchVisibilityState;->values()[Lorg/catrobat/catroid/common/ScratchVisibilityState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 41
    .local v3, "legEnum":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    sget-object v4, Lorg/catrobat/catroid/common/ScratchVisibilityState;->visibilityStates:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/common/ScratchVisibilityState;->visibilityState:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .end local v3    # "legEnum":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/common/ScratchVisibilityState$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/ScratchVisibilityState$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "visibilityState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->visibilityState:I

    .line 46
    return-void
.end method

.method public static valueOf(I)Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .locals 1
    .param p0, "visibilityState"    # I

    .line 49
    sget-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->visibilityStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/common/ScratchVisibilityState;
    .locals 1

    .line 30
    sget-object v0, Lorg/catrobat/catroid/common/ScratchVisibilityState;->$VALUES:[Lorg/catrobat/catroid/common/ScratchVisibilityState;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/common/ScratchVisibilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/common/ScratchVisibilityState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/ScratchVisibilityState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
