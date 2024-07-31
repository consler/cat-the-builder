.class public final enum Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
.super Ljava/lang/Enum;
.source "DroneConfigPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/common/DroneConfigPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Preferences"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

.field public static final enum FIRST:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

.field public static final enum FOURTH:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

.field public static final enum SECOND:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

.field public static final enum THIRD:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->FIRST:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    .line 31
    new-instance v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    const-string v1, "SECOND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->SECOND:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    .line 32
    new-instance v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    const-string v1, "THIRD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->THIRD:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    .line 33
    new-instance v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    const-string v1, "FOURTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->FOURTH:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    .line 29
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    sget-object v6, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->FIRST:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    aput-object v6, v1, v2

    sget-object v2, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->SECOND:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->THIRD:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->$VALUES:[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPreferenceCodes()[Ljava/lang/String;
    .locals 3

    .line 36
    invoke-static {}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->values()[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    .local v0, "valueStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->values()[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 39
    invoke-static {}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->values()[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getPreferenceFromPreferenceCode(Ljava/lang/String;)Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    .locals 2
    .param p0, "preferenceCode"    # Ljava/lang/String;

    .line 46
    const-class v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    invoke-static {v0, p0}, Lorg/catrobat/catroid/utils/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    .line 47
    .local v0, "preferences":Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->FIRST:Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    :goto_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    .locals 1

    .line 29
    sget-object v0, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->$VALUES:[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    return-object v0
.end method
