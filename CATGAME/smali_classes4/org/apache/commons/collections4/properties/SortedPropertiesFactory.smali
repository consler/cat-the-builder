.class public Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;
.super Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;
.source "SortedPropertiesFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<",
        "Lorg/apache/commons/collections4/properties/SortedProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;

    invoke-direct {v0}, Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;->INSTANCE:Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createProperties()Ljava/util/Properties;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/collections4/properties/SortedPropertiesFactory;->createProperties()Lorg/apache/commons/collections4/properties/SortedProperties;

    move-result-object v0

    return-object v0
.end method

.method protected createProperties()Lorg/apache/commons/collections4/properties/SortedProperties;
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/commons/collections4/properties/SortedProperties;

    invoke-direct {v0}, Lorg/apache/commons/collections4/properties/SortedProperties;-><init>()V

    return-object v0
.end method
