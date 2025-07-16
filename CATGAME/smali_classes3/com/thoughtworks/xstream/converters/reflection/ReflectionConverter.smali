.class public Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.source "ReflectionConverter.java"


# instance fields
.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/Class;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 34
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->canAccess(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
