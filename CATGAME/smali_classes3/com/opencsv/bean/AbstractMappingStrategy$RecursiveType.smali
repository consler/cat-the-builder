.class Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
.super Ljava/lang/Object;
.source "AbstractMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/bean/AbstractMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecursiveType"
.end annotation


# instance fields
.field private final recursiveMembers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/opencsv/bean/FieldAccess<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 748
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->recursiveMembers:Ljava/util/Map;

    .line 749
    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->type:Ljava/lang/Class;

    .line 750
    return-void
.end method

.method static synthetic access$000(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    .line 744
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->type:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public addRecursiveMember(Lcom/opencsv/bean/FieldAccess;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    .locals 1
    .param p2, "memberType"    # Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/FieldAccess<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;",
            ")",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;"
        }
    .end annotation

    .line 755
    .local p1, "member":Lcom/opencsv/bean/FieldAccess;, "Lcom/opencsv/bean/FieldAccess<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->recursiveMembers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    return-object v0
.end method

.method public getRecursiveMembers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/opencsv/bean/FieldAccess<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->recursiveMembers:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->type:Ljava/lang/Class;

    return-object v0
.end method
