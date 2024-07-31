.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArgumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

.field public static final enum CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

.field public static final enum FORCE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

.field public static final enum JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

.field public static final enum VERBOSE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x0

    const-string v3, "clientID"

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    const-string v1, "JOB_ID"

    const/4 v3, 0x1

    const-string v4, "jobID"

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    .line 54
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    const-string v1, "FORCE"

    const/4 v4, 0x2

    const-string v5, "force"

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->FORCE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    .line 55
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    const-string v1, "VERBOSE"

    const/4 v5, 0x3

    const-string v6, "verbose"

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->VERBOSE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    .line 51
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    sget-object v6, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->FORCE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->rawValue:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;
    .locals 1

    .line 51
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->rawValue:Ljava/lang/String;

    return-object v0
.end method
