.class public Lcom/opencsv/bean/FieldMapByPositionEntry;
.super Ljava/lang/Object;
.source "FieldMapByPositionEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final field:Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final position:I


# direct methods
.method public constructor <init>(ILcom/opencsv/bean/BeanField;)V
    .locals 0
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPositionEntry;, "Lcom/opencsv/bean/FieldMapByPositionEntry<TT;>;"
    .local p2, "field":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/opencsv/bean/FieldMapByPositionEntry;->position:I

    .line 44
    iput-object p2, p0, Lcom/opencsv/bean/FieldMapByPositionEntry;->field:Lcom/opencsv/bean/BeanField;

    .line 45
    return-void
.end method


# virtual methods
.method public getField()Lcom/opencsv/bean/BeanField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/BeanField<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPositionEntry;, "Lcom/opencsv/bean/FieldMapByPositionEntry<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/FieldMapByPositionEntry;->field:Lcom/opencsv/bean/BeanField;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 48
    .local p0, "this":Lcom/opencsv/bean/FieldMapByPositionEntry;, "Lcom/opencsv/bean/FieldMapByPositionEntry<TT;>;"
    iget v0, p0, Lcom/opencsv/bean/FieldMapByPositionEntry;->position:I

    return v0
.end method
