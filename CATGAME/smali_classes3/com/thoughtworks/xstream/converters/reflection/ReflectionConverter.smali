.class public Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.source "ReflectionConverter.java"


# instance fields
.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p3, "type"    # Ljava/lang/Class;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 34
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    .line 35
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->type:Ljava/lang/Class;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->canAccess(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
