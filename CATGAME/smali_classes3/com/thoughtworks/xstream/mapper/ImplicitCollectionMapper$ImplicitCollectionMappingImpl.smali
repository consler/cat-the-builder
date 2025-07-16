.class Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;
.super Ljava/lang/Object;
.source "ImplicitCollectionMapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImplicitCollectionMappingImpl"
.end annotation


# instance fields
.field private final fieldName:Ljava/lang/String;

.field private final itemFieldName:Ljava/lang/String;

.field private final itemType:Ljava/lang/Class;

.field private final keyFieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->fieldName:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->itemFieldName:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->itemType:Ljava/lang/Class;

    .line 255
    iput-object p4, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->keyFieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createNamedItemType()Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;
    .locals 3

    .line 259
    new-instance v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->itemType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->itemFieldName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemFieldName()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->itemFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/Class;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->itemType:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeyFieldName()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$ImplicitCollectionMappingImpl;->keyFieldName:Ljava/lang/String;

    return-object v0
.end method
