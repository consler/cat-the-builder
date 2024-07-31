.class public final enum Lorg/catrobat/catroid/scratchconverter/Client$State;
.super Ljava/lang/Enum;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/Client$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/Client$State;

.field public static final enum CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

.field public static final enum CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

.field public static final enum NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/Client$State;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/Client$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    new-instance v0, Lorg/catrobat/catroid/scratchconverter/Client$State;

    const-string v1, "CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/scratchconverter/Client$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    new-instance v0, Lorg/catrobat/catroid/scratchconverter/Client$State;

    const-string v1, "CONNECTED_AUTHENTICATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/scratchconverter/Client$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED_AUTHENTICATED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 36
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/Client$State;

    sget-object v5, Lorg/catrobat/catroid/scratchconverter/Client$State;->NOT_CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/Client$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/Client$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/catrobat/catroid/scratchconverter/Client$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/Client$State;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/Client$State;
    .locals 1

    .line 36
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/Client$State;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/Client$State;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/Client$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/Client$State;

    return-object v0
.end method
