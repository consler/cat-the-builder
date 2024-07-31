.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DataListAdapter.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
        ">;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;"
    }
.end annotation


# static fields
.field private static final LIST_GLOBAL:I = 0x4

.field private static final LIST_LOCAL:I = 0x5

.field private static final USER_DEFINED_BRICK_INPUTS:I = 0x0

.field private static final VAR_GLOBAL:I = 0x2

.field private static final VAR_LOCAL:I = 0x3

.field private static final VAR_MULTIPLAYER:I = 0x1


# instance fields
.field public allowMultiSelection:Z

.field private final globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

.field private final globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

.field private final localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

.field private final userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "userDefinedBrickInputs":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    .local p2, "multiplayerVars":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    .local p3, "globalVars":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    .local p4, "localVars":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    .local p5, "globalLists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    .local p6, "localLists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->allowMultiSelection:Z

    .line 81
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    .line 82
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 84
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$1;

    invoke-direct {v0, p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 98
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 100
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$2;

    invoke-direct {v0, p0, p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 114
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 116
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$3;

    invoke-direct {v0, p0, p4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$3;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 130
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 132
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$4;

    invoke-direct {v0, p0, p5}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$4;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 146
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 148
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$5;

    invoke-direct {v0, p0, p6}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$5;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 162
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;II)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getRelativeItemPosition(II)I

    move-result v0

    return v0
.end method

.method private getDataType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 200
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 204
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 205
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 206
    const/4 v0, 0x2

    return v0

    .line 208
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 209
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 210
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 211
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    .line 212
    const/4 v0, 0x3

    return v0

    .line 214
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 215
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 216
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 217
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 218
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_4

    .line 219
    const/4 v0, 0x4

    return v0

    .line 221
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 222
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 223
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 224
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 225
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 226
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 227
    const/4 v0, 0x5

    return v0

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of the sub adapters provides this position. size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRelativeItemPosition(II)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "dataType"    # I

    .line 166
    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 185
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 186
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 187
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 188
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 184
    return v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataType is not specified: this would throw an index out of bounds exception."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 180
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 181
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 182
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 179
    return v0

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 176
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 177
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 175
    return v0

    .line 172
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 173
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 172
    return v0

    .line 170
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0

    .line 168
    :cond_5
    return p1
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->clearSelection()V

    .line 344
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->clearSelection()V

    .line 345
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->clearSelection()V

    .line 346
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->clearSelection()V

    .line 347
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->clearSelection()V

    .line 348
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 349
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 443
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 444
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 445
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 446
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 447
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 278
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getDataType(I)I

    move-result v0

    .line 279
    .local v0, "dataType":I
    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getRelativeItemPosition(II)I

    move-result p1

    .line 280
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "position is not within any of the adapters"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const v1, 0x7f0d01ed

    goto :goto_1

    :cond_2
    const v1, 0x7f0d01ec

    :goto_1
    return v1

    .line 285
    :cond_3
    if-nez p1, :cond_4

    const v1, 0x7f0d01f1

    goto :goto_2

    :cond_4
    const v1, 0x7f0d01f0

    :goto_2
    return v1
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 381
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    return-object v0
.end method

.method public getLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItemCount()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 452
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 453
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 454
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getSelectedItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 455
    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getSelectedItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    return v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    return-object v0
.end method

.method public getVariables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 296
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getDataType(I)I

    move-result v0

    .line 297
    .local v0, "dataType":I
    invoke-direct {p0, p2, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->getRelativeItemPosition(II)I

    move-result p2

    .line 299
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 302
    :pswitch_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    goto :goto_0

    .line 304
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 305
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    goto :goto_0

    .line 306
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 307
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    goto :goto_0

    .line 308
    :cond_2
    if-nez v0, :cond_4

    .line 309
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    goto :goto_0

    .line 314
    :pswitch_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 315
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 321
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0d01ec
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 262
    packed-switch p2, :pswitch_data_0

    .line 270
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewType was not defined correctly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :pswitch_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01ec
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSelectionChanged(I)V
    .locals 3
    .param p1, "selectedItemCnt"    # I

    .line 325
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 326
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    .line 327
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 328
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    .line 329
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 325
    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;->onSelectionChanged(I)V

    .line 330
    return-void
.end method

.method public remove(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 361
    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 366
    .local v0, "projectDir":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/io/DeviceVariableAccessor;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/io/DeviceVariableAccessor;->removeDeviceValue(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 367
    .end local v0    # "projectDir":Ljava/io/File;
    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 372
    .restart local v0    # "projectDir":Ljava/io/File;
    new-instance v1, Lorg/catrobat/catroid/io/DeviceListAccessor;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/io/DeviceListAccessor;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/io/DeviceListAccessor;->removeDeviceValue(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 374
    .end local v0    # "projectDir":Ljava/io/File;
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 375
    return-void
.end method

.method public selectAll()V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->selectAll()V

    .line 353
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->selectAll()V

    .line 354
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->selectAll()V

    .line 355
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->selectAll()V

    .line 356
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->selectAll()V

    .line 357
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 358
    return-void
.end method

.method public setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "onItemClickListener"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    .line 251
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 252
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 253
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 254
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 255
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 256
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 257
    return-void
.end method

.method public setSelection(Lorg/catrobat/catroid/formulaeditor/UserData;Z)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .param p2, "selection"    # Z

    .line 414
    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setSelection(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 416
    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setSelection(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->setSelection(Ljava/lang/Object;Z)Z

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->setSelection(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->setSelection(Ljava/lang/Object;Z)Z

    .line 424
    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V
    .locals 0
    .param p1, "selectionListener"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    .line 247
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    .line 248
    return-void
.end method

.method public showCheckBoxes(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 234
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    iput-boolean p1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showCheckBoxes:Z

    .line 235
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showSettings:Z

    .line 236
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    iput-boolean p1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showCheckBoxes:Z

    .line 237
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showSettings:Z

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    iput-boolean p1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showCheckBoxes:Z

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showSettings:Z

    .line 240
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    iput-boolean p1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->showCheckBoxes:Z

    .line 241
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->showSettings:Z

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    iput-boolean p1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->showCheckBoxes:Z

    .line 243
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->showSettings:Z

    .line 244
    return-void
.end method

.method public toggleSelection(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 427
    instance-of v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->toggleSelection(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 429
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->toggleSelection(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->toggleSelection(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->toggleSelection(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->toggleSelection(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 438
    return-void
.end method

.method public updateDataSet()V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->userDefinedBrickInputAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->notifyDataSetChanged()V

    .line 334
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->multiplayerVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->notifyDataSetChanged()V

    .line 335
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->notifyDataSetChanged()V

    .line 336
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localVarAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->notifyDataSetChanged()V

    .line 337
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->globalListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->notifyDataSetChanged()V

    .line 338
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->localListAdapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->notifyDataSetChanged()V

    .line 339
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->notifyDataSetChanged()V

    .line 340
    return-void
.end method
