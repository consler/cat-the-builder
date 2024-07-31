.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

.field public static final enum AUTHENTICATE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

.field public static final enum CANCEL_DOWNLOAD:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

.field public static final enum RETRIEVE_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

.field public static final enum SCHEDULE_JOB:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;


# instance fields
.field private final typeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    const-string v1, "AUTHENTICATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->AUTHENTICATE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    const-string v1, "RETRIEVE_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->RETRIEVE_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    const-string v1, "SCHEDULE_JOB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->SCHEDULE_JOB:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    .line 38
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    const-string v1, "CANCEL_DOWNLOAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->CANCEL_DOWNLOAD:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    .line 34
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    sget-object v6, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->AUTHENTICATE:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->RETRIEVE_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->SCHEDULE_JOB:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->typeID:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;
    .locals 1

    .line 34
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    return-object v0
.end method


# virtual methods
.method public getTypeID()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->typeID:I

    return v0
.end method
