.class public Lcom/thoughtworks/xstream/converters/reflection/LambdaConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;
.source "LambdaConverter.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 45
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Types;->isLambdaType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    .line 51
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    :cond_0
    return-void
.end method
