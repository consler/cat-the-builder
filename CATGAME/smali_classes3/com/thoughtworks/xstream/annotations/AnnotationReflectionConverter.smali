.class public Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;
.source "AnnotationReflectionConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final annotationProvider:Lcom/thoughtworks/xstream/annotations/AnnotationProvider;

.field private final cachedConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/thoughtworks/xstream/converters/ConverterMatcher;",
            ">;",
            "Lcom/thoughtworks/xstream/converters/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/annotations/AnnotationProvider;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p3, "annotationProvider"    # Lcom/thoughtworks/xstream/annotations/AnnotationProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 50
    iput-object p3, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->annotationProvider:Lcom/thoughtworks/xstream/annotations/AnnotationProvider;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->cachedConverters:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private ensureCache(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/thoughtworks/xstream/converters/ConverterMatcher;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thoughtworks/xstream/converters/ConverterMatcher;>;"
    iget-object v0, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->cachedConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->cachedConverters:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->newInstance(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
.end method

.method private newInstance(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/thoughtworks/xstream/converters/ConverterMatcher;",
            ">;)",
            "Lcom/thoughtworks/xstream/converters/Converter;"
        }
    .end annotation

    .line 96
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thoughtworks/xstream/converters/ConverterMatcher;>;"
    const-string v0, "Cannot construct "

    :try_start_0
    const-class v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 97
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 98
    .local v1, "svc":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    new-instance v2, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    move-object v0, v2

    .line 99
    .end local v1    # "svc":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    goto :goto_0

    .line 100
    .end local v0    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :cond_0
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/Converter;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 111
    .restart local v0    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :goto_0
    nop

    .line 112
    return-object v0

    .line 109
    .end local v0    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 105
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected marshallField(Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p2, "newObj"    # Ljava/lang/Object;
    .param p3, "field"    # Ljava/lang/reflect/Field;

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->annotationProvider:Lcom/thoughtworks/xstream/annotations/AnnotationProvider;

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    invoke-virtual {v0, p3, v1}, Lcom/thoughtworks/xstream/annotations/AnnotationProvider;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    .line 57
    .local v0, "annotation":Lcom/thoughtworks/xstream/annotations/XStreamConverter;
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->value()Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thoughtworks/xstream/converters/ConverterMatcher;>;"
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->ensureCache(Ljava/lang/Class;)V

    .line 60
    iget-object v2, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->cachedConverters:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-interface {p1, p2, v2}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 61
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thoughtworks/xstream/converters/ConverterMatcher;>;"
    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void
.end method

.method protected unmarshallField(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;
    .param p4, "field"    # Ljava/lang/reflect/Field;

    .line 75
    iget-object v0, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->annotationProvider:Lcom/thoughtworks/xstream/annotations/AnnotationProvider;

    const-class v1, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    invoke-virtual {v0, p4, v1}, Lcom/thoughtworks/xstream/annotations/AnnotationProvider;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/annotations/XStreamConverter;

    .line 77
    .local v0, "annotation":Lcom/thoughtworks/xstream/annotations/XStreamConverter;
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/thoughtworks/xstream/annotations/XStreamConverter;->value()Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, "converterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thoughtworks/xstream/converters/Converter;>;"
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->ensureCache(Ljava/lang/Class;)V

    .line 80
    iget-object v2, p0, Lcom/thoughtworks/xstream/annotations/AnnotationReflectionConverter;->cachedConverters:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-interface {p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 82
    .end local v1    # "converterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thoughtworks/xstream/converters/Converter;>;"
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
