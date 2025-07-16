.class public Lorg/apache/commons/collections4/properties/PropertiesFactory;
.super Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;
.source "PropertiesFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/properties/PropertiesFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/commons/collections4/properties/PropertiesFactory;

    invoke-direct {v0}, Lorg/apache/commons/collections4/properties/PropertiesFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/properties/PropertiesFactory;->INSTANCE:Lorg/apache/commons/collections4/properties/PropertiesFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createProperties()Ljava/util/Properties;
    .locals 1

    .line 49
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-object v0
.end method
