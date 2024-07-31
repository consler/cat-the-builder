.class public final Lorg/catrobat/catroid/utils/DeviceSettingsProvider;
.super Ljava/lang/Object;
.source "DeviceSettingsProvider.java"


# static fields
.field private static final ANONYMIZED_COUNTRY_DEFAULT_ANTARCTICA:Ljava/lang/String; = "aq"

.field private static final EMPTY_EMAIL_ADDRESS:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getUserCountryCode()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "aq"

    return-object v0
.end method

.method public static getUserEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, ""

    return-object v0
.end method
