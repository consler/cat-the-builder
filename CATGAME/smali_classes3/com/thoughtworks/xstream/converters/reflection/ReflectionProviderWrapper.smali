.class public Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;
.super Ljava/lang/Object;
.source "ReflectionProviderWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;


# instance fields
.field protected final wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-void
.end method


# virtual methods
.method public fieldDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->fieldDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method public getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method public getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProviderWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
