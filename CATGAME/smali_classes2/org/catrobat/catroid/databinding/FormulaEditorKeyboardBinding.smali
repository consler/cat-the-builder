.class public final Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;
.super Ljava/lang/Object;
.source "FormulaEditorKeyboardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final formulaEditorKeyboard0:Landroid/widget/Button;

.field public final formulaEditorKeyboard1:Landroid/widget/Button;

.field public final formulaEditorKeyboard2:Landroid/widget/Button;

.field public final formulaEditorKeyboard3:Landroid/widget/Button;

.field public final formulaEditorKeyboard4:Landroid/widget/Button;

.field public final formulaEditorKeyboard5:Landroid/widget/Button;

.field public final formulaEditorKeyboard6:Landroid/widget/Button;

.field public final formulaEditorKeyboard7:Landroid/widget/Button;

.field public final formulaEditorKeyboard8:Landroid/widget/Button;

.field public final formulaEditorKeyboard9:Landroid/widget/Button;

.field public final formulaEditorKeyboardBracketClose:Landroid/widget/Button;

.field public final formulaEditorKeyboardBracketOpen:Landroid/widget/Button;

.field public final formulaEditorKeyboardColorPicker:Landroid/widget/ImageButton;

.field public final formulaEditorKeyboardCompute:Landroid/widget/Button;

.field public final formulaEditorKeyboardData:Landroid/widget/Button;

.field public final formulaEditorKeyboardDecimalMark:Landroid/widget/Button;

.field public final formulaEditorKeyboardDelete:Landroid/widget/ImageButton;

.field public final formulaEditorKeyboardDivide:Landroid/widget/Button;

.field public final formulaEditorKeyboardFunction:Landroid/widget/Button;

.field public final formulaEditorKeyboardFunctionalButtonToggle:Landroid/widget/ImageButton;

.field public final formulaEditorKeyboardLogic:Landroid/widget/Button;

.field public final formulaEditorKeyboardMinus:Landroid/widget/Button;

.field public final formulaEditorKeyboardMult:Landroid/widget/Button;

.field public final formulaEditorKeyboardObject:Landroid/widget/Button;

.field public final formulaEditorKeyboardPlus:Landroid/widget/Button;

.field public final formulaEditorKeyboardSensors:Landroid/widget/Button;

.field public final formulaEditorKeyboardString:Landroid/widget/Button;

.field private final rootView:Landroid/widget/TableLayout;

.field public final tableRow11:Landroid/widget/TableRow;

.field public final tableRow12:Landroid/widget/TableRow;

.field public final tableRow2:Landroid/widget/TableRow;

.field public final tableRow3:Landroid/widget/TableRow;

.field public final tableRow4:Landroid/widget/TableRow;

.field public final tableRow5:Landroid/widget/TableRow;


# direct methods
.method private constructor <init>(Landroid/widget/TableLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/TableLayout;
    .param p2, "formulaEditorKeyboard0"    # Landroid/widget/Button;
    .param p3, "formulaEditorKeyboard1"    # Landroid/widget/Button;
    .param p4, "formulaEditorKeyboard2"    # Landroid/widget/Button;
    .param p5, "formulaEditorKeyboard3"    # Landroid/widget/Button;
    .param p6, "formulaEditorKeyboard4"    # Landroid/widget/Button;
    .param p7, "formulaEditorKeyboard5"    # Landroid/widget/Button;
    .param p8, "formulaEditorKeyboard6"    # Landroid/widget/Button;
    .param p9, "formulaEditorKeyboard7"    # Landroid/widget/Button;
    .param p10, "formulaEditorKeyboard8"    # Landroid/widget/Button;
    .param p11, "formulaEditorKeyboard9"    # Landroid/widget/Button;
    .param p12, "formulaEditorKeyboardBracketClose"    # Landroid/widget/Button;
    .param p13, "formulaEditorKeyboardBracketOpen"    # Landroid/widget/Button;
    .param p14, "formulaEditorKeyboardColorPicker"    # Landroid/widget/ImageButton;
    .param p15, "formulaEditorKeyboardCompute"    # Landroid/widget/Button;
    .param p16, "formulaEditorKeyboardData"    # Landroid/widget/Button;
    .param p17, "formulaEditorKeyboardDecimalMark"    # Landroid/widget/Button;
    .param p18, "formulaEditorKeyboardDelete"    # Landroid/widget/ImageButton;
    .param p19, "formulaEditorKeyboardDivide"    # Landroid/widget/Button;
    .param p20, "formulaEditorKeyboardFunction"    # Landroid/widget/Button;
    .param p21, "formulaEditorKeyboardFunctionalButtonToggle"    # Landroid/widget/ImageButton;
    .param p22, "formulaEditorKeyboardLogic"    # Landroid/widget/Button;
    .param p23, "formulaEditorKeyboardMinus"    # Landroid/widget/Button;
    .param p24, "formulaEditorKeyboardMult"    # Landroid/widget/Button;
    .param p25, "formulaEditorKeyboardObject"    # Landroid/widget/Button;
    .param p26, "formulaEditorKeyboardPlus"    # Landroid/widget/Button;
    .param p27, "formulaEditorKeyboardSensors"    # Landroid/widget/Button;
    .param p28, "formulaEditorKeyboardString"    # Landroid/widget/Button;
    .param p29, "tableRow11"    # Landroid/widget/TableRow;
    .param p30, "tableRow12"    # Landroid/widget/TableRow;
    .param p31, "tableRow2"    # Landroid/widget/TableRow;
    .param p32, "tableRow3"    # Landroid/widget/TableRow;
    .param p33, "tableRow4"    # Landroid/widget/TableRow;
    .param p34, "tableRow5"    # Landroid/widget/TableRow;

    .line 141
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->rootView:Landroid/widget/TableLayout;

    .line 143
    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard0:Landroid/widget/Button;

    .line 144
    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard1:Landroid/widget/Button;

    .line 145
    move-object/from16 v4, p4

    iput-object v4, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard2:Landroid/widget/Button;

    .line 146
    move-object/from16 v5, p5

    iput-object v5, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard3:Landroid/widget/Button;

    .line 147
    move-object/from16 v6, p6

    iput-object v6, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard4:Landroid/widget/Button;

    .line 148
    move-object/from16 v7, p7

    iput-object v7, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard5:Landroid/widget/Button;

    .line 149
    move-object/from16 v8, p8

    iput-object v8, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard6:Landroid/widget/Button;

    .line 150
    move-object/from16 v9, p9

    iput-object v9, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard7:Landroid/widget/Button;

    .line 151
    move-object/from16 v10, p10

    iput-object v10, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard8:Landroid/widget/Button;

    .line 152
    move-object/from16 v11, p11

    iput-object v11, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboard9:Landroid/widget/Button;

    .line 153
    move-object/from16 v12, p12

    iput-object v12, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardBracketClose:Landroid/widget/Button;

    .line 154
    move-object/from16 v13, p13

    iput-object v13, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardBracketOpen:Landroid/widget/Button;

    .line 155
    move-object/from16 v14, p14

    iput-object v14, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardColorPicker:Landroid/widget/ImageButton;

    .line 156
    move-object/from16 v15, p15

    iput-object v15, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardCompute:Landroid/widget/Button;

    .line 157
    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardData:Landroid/widget/Button;

    .line 158
    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardDecimalMark:Landroid/widget/Button;

    .line 159
    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardDelete:Landroid/widget/ImageButton;

    .line 160
    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardDivide:Landroid/widget/Button;

    .line 161
    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardFunction:Landroid/widget/Button;

    .line 162
    move-object/from16 v1, p21

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardFunctionalButtonToggle:Landroid/widget/ImageButton;

    .line 163
    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardLogic:Landroid/widget/Button;

    .line 164
    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardMinus:Landroid/widget/Button;

    .line 165
    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardMult:Landroid/widget/Button;

    .line 166
    move-object/from16 v1, p25

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardObject:Landroid/widget/Button;

    .line 167
    move-object/from16 v1, p26

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardPlus:Landroid/widget/Button;

    .line 168
    move-object/from16 v1, p27

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardSensors:Landroid/widget/Button;

    .line 169
    move-object/from16 v1, p28

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->formulaEditorKeyboardString:Landroid/widget/Button;

    .line 170
    move-object/from16 v1, p29

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->tableRow11:Landroid/widget/TableRow;

    .line 171
    move-object/from16 v1, p30

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->tableRow12:Landroid/widget/TableRow;

    .line 172
    move-object/from16 v1, p31

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->tableRow2:Landroid/widget/TableRow;

    .line 173
    move-object/from16 v1, p32

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->tableRow3:Landroid/widget/TableRow;

    .line 174
    move-object/from16 v1, p33

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->tableRow4:Landroid/widget/TableRow;

    .line 175
    move-object/from16 v1, p34

    iput-object v1, v0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->tableRow5:Landroid/widget/TableRow;

    .line 176
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;
    .locals 71
    .param p0, "rootView"    # Landroid/view/View;

    .line 205
    move-object/from16 v0, p0

    const v1, 0x7f0a0397

    .line 206
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 207
    .local v2, "formulaEditorKeyboard0":Landroid/widget/Button;
    if-eqz v2, :cond_20

    .line 211
    const v1, 0x7f0a0398

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/widget/Button;

    .line 213
    .local v38, "formulaEditorKeyboard1":Landroid/widget/Button;
    if-eqz v38, :cond_1f

    .line 217
    const v1, 0x7f0a0399

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/widget/Button;

    .line 219
    .local v39, "formulaEditorKeyboard2":Landroid/widget/Button;
    if-eqz v39, :cond_1e

    .line 223
    const v1, 0x7f0a039a

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Landroid/widget/Button;

    .line 225
    .local v40, "formulaEditorKeyboard3":Landroid/widget/Button;
    if-eqz v40, :cond_1d

    .line 229
    const v1, 0x7f0a039b

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v41, v3

    check-cast v41, Landroid/widget/Button;

    .line 231
    .local v41, "formulaEditorKeyboard4":Landroid/widget/Button;
    if-eqz v41, :cond_1c

    .line 235
    const v1, 0x7f0a039c

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v42, v3

    check-cast v42, Landroid/widget/Button;

    .line 237
    .local v42, "formulaEditorKeyboard5":Landroid/widget/Button;
    if-eqz v42, :cond_1b

    .line 241
    const v1, 0x7f0a039d

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v43, v3

    check-cast v43, Landroid/widget/Button;

    .line 243
    .local v43, "formulaEditorKeyboard6":Landroid/widget/Button;
    if-eqz v43, :cond_1a

    .line 247
    const v1, 0x7f0a039e

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v44, v3

    check-cast v44, Landroid/widget/Button;

    .line 249
    .local v44, "formulaEditorKeyboard7":Landroid/widget/Button;
    if-eqz v44, :cond_19

    .line 253
    const v1, 0x7f0a039f

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Landroid/widget/Button;

    .line 255
    .local v45, "formulaEditorKeyboard8":Landroid/widget/Button;
    if-eqz v45, :cond_18

    .line 259
    const v1, 0x7f0a03a0

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Landroid/widget/Button;

    .line 261
    .local v46, "formulaEditorKeyboard9":Landroid/widget/Button;
    if-eqz v46, :cond_17

    .line 265
    const v1, 0x7f0a03a1

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v47, v3

    check-cast v47, Landroid/widget/Button;

    .line 267
    .local v47, "formulaEditorKeyboardBracketClose":Landroid/widget/Button;
    if-eqz v47, :cond_16

    .line 271
    const v1, 0x7f0a03a2

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Landroid/widget/Button;

    .line 273
    .local v48, "formulaEditorKeyboardBracketOpen":Landroid/widget/Button;
    if-eqz v48, :cond_15

    .line 277
    const v1, 0x7f0a03a3

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v49, v3

    check-cast v49, Landroid/widget/ImageButton;

    .line 279
    .local v49, "formulaEditorKeyboardColorPicker":Landroid/widget/ImageButton;
    if-eqz v49, :cond_14

    .line 283
    const v1, 0x7f0a03a4

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v50, v3

    check-cast v50, Landroid/widget/Button;

    .line 285
    .local v50, "formulaEditorKeyboardCompute":Landroid/widget/Button;
    if-eqz v50, :cond_13

    .line 289
    const v1, 0x7f0a03a5

    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Landroid/widget/Button;

    .line 291
    .local v51, "formulaEditorKeyboardData":Landroid/widget/Button;
    if-eqz v51, :cond_12

    .line 295
    const v1, 0x7f0a03a6

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Landroid/widget/Button;

    .line 297
    .local v52, "formulaEditorKeyboardDecimalMark":Landroid/widget/Button;
    if-eqz v52, :cond_11

    .line 301
    const v1, 0x7f0a03a7

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Landroid/widget/ImageButton;

    .line 303
    .local v53, "formulaEditorKeyboardDelete":Landroid/widget/ImageButton;
    if-eqz v53, :cond_10

    .line 307
    const v1, 0x7f0a03a8

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Landroid/widget/Button;

    .line 309
    .local v54, "formulaEditorKeyboardDivide":Landroid/widget/Button;
    if-eqz v54, :cond_f

    .line 313
    const v1, 0x7f0a03a9

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v55, v3

    check-cast v55, Landroid/widget/Button;

    .line 315
    .local v55, "formulaEditorKeyboardFunction":Landroid/widget/Button;
    if-eqz v55, :cond_e

    .line 319
    const v1, 0x7f0a03aa

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v56, v3

    check-cast v56, Landroid/widget/ImageButton;

    .line 321
    .local v56, "formulaEditorKeyboardFunctionalButtonToggle":Landroid/widget/ImageButton;
    if-eqz v56, :cond_d

    .line 325
    const v1, 0x7f0a03ab

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v57, v3

    check-cast v57, Landroid/widget/Button;

    .line 327
    .local v57, "formulaEditorKeyboardLogic":Landroid/widget/Button;
    if-eqz v57, :cond_c

    .line 331
    const v1, 0x7f0a03ac

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v58, v3

    check-cast v58, Landroid/widget/Button;

    .line 333
    .local v58, "formulaEditorKeyboardMinus":Landroid/widget/Button;
    if-eqz v58, :cond_b

    .line 337
    const v1, 0x7f0a03ad

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v59, v3

    check-cast v59, Landroid/widget/Button;

    .line 339
    .local v59, "formulaEditorKeyboardMult":Landroid/widget/Button;
    if-eqz v59, :cond_a

    .line 343
    const v1, 0x7f0a03ae

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v60, v3

    check-cast v60, Landroid/widget/Button;

    .line 345
    .local v60, "formulaEditorKeyboardObject":Landroid/widget/Button;
    if-eqz v60, :cond_9

    .line 349
    const v1, 0x7f0a03af

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v61, v3

    check-cast v61, Landroid/widget/Button;

    .line 351
    .local v61, "formulaEditorKeyboardPlus":Landroid/widget/Button;
    if-eqz v61, :cond_8

    .line 355
    const v1, 0x7f0a03b0

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v62, v3

    check-cast v62, Landroid/widget/Button;

    .line 357
    .local v62, "formulaEditorKeyboardSensors":Landroid/widget/Button;
    if-eqz v62, :cond_7

    .line 361
    const v1, 0x7f0a03b1

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v63, v3

    check-cast v63, Landroid/widget/Button;

    .line 363
    .local v63, "formulaEditorKeyboardString":Landroid/widget/Button;
    if-eqz v63, :cond_6

    .line 367
    const v1, 0x7f0a05ea

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v64, v3

    check-cast v64, Landroid/widget/TableRow;

    .line 369
    .local v64, "tableRow11":Landroid/widget/TableRow;
    if-eqz v64, :cond_5

    .line 373
    const v1, 0x7f0a05eb

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v65, v3

    check-cast v65, Landroid/widget/TableRow;

    .line 375
    .local v65, "tableRow12":Landroid/widget/TableRow;
    if-eqz v65, :cond_4

    .line 379
    const v1, 0x7f0a05ec

    .line 380
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v66, v3

    check-cast v66, Landroid/widget/TableRow;

    .line 381
    .local v66, "tableRow2":Landroid/widget/TableRow;
    if-eqz v66, :cond_3

    .line 385
    const v1, 0x7f0a05ed

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v67, v3

    check-cast v67, Landroid/widget/TableRow;

    .line 387
    .local v67, "tableRow3":Landroid/widget/TableRow;
    if-eqz v67, :cond_2

    .line 391
    const v1, 0x7f0a05ee

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v68, v3

    check-cast v68, Landroid/widget/TableRow;

    .line 393
    .local v68, "tableRow4":Landroid/widget/TableRow;
    if-eqz v68, :cond_1

    .line 397
    const v1, 0x7f0a05ef

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v69, v3

    check-cast v69, Landroid/widget/TableRow;

    .line 399
    .local v69, "tableRow5":Landroid/widget/TableRow;
    if-eqz v69, :cond_0

    .line 403
    new-instance v70, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;

    move-object/from16 v3, v70

    move-object v4, v0

    check-cast v4, Landroid/widget/TableLayout;

    move-object v5, v2

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v8, v40

    move-object/from16 v9, v41

    move-object/from16 v10, v42

    move-object/from16 v11, v43

    move-object/from16 v12, v44

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v15, v47

    move-object/from16 v16, v48

    move-object/from16 v17, v49

    move-object/from16 v18, v50

    move-object/from16 v19, v51

    move-object/from16 v20, v52

    move-object/from16 v21, v53

    move-object/from16 v22, v54

    move-object/from16 v23, v55

    move-object/from16 v24, v56

    move-object/from16 v25, v57

    move-object/from16 v26, v58

    move-object/from16 v27, v59

    move-object/from16 v28, v60

    move-object/from16 v29, v61

    move-object/from16 v30, v62

    move-object/from16 v31, v63

    move-object/from16 v32, v64

    move-object/from16 v33, v65

    move-object/from16 v34, v66

    move-object/from16 v35, v67

    move-object/from16 v36, v68

    move-object/from16 v37, v69

    invoke-direct/range {v3 .. v37}, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;-><init>(Landroid/widget/TableLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;Landroid/widget/TableRow;)V

    return-object v70

    .line 400
    :cond_0
    goto :goto_0

    .line 394
    .end local v69    # "tableRow5":Landroid/widget/TableRow;
    :cond_1
    goto :goto_0

    .line 388
    .end local v68    # "tableRow4":Landroid/widget/TableRow;
    :cond_2
    goto :goto_0

    .line 382
    .end local v67    # "tableRow3":Landroid/widget/TableRow;
    :cond_3
    goto :goto_0

    .line 376
    .end local v66    # "tableRow2":Landroid/widget/TableRow;
    :cond_4
    goto :goto_0

    .line 370
    .end local v65    # "tableRow12":Landroid/widget/TableRow;
    :cond_5
    goto :goto_0

    .line 364
    .end local v64    # "tableRow11":Landroid/widget/TableRow;
    :cond_6
    goto :goto_0

    .line 358
    .end local v63    # "formulaEditorKeyboardString":Landroid/widget/Button;
    :cond_7
    goto :goto_0

    .line 352
    .end local v62    # "formulaEditorKeyboardSensors":Landroid/widget/Button;
    :cond_8
    goto :goto_0

    .line 346
    .end local v61    # "formulaEditorKeyboardPlus":Landroid/widget/Button;
    :cond_9
    goto :goto_0

    .line 340
    .end local v60    # "formulaEditorKeyboardObject":Landroid/widget/Button;
    :cond_a
    goto :goto_0

    .line 334
    .end local v59    # "formulaEditorKeyboardMult":Landroid/widget/Button;
    :cond_b
    goto :goto_0

    .line 328
    .end local v58    # "formulaEditorKeyboardMinus":Landroid/widget/Button;
    :cond_c
    goto :goto_0

    .line 322
    .end local v57    # "formulaEditorKeyboardLogic":Landroid/widget/Button;
    :cond_d
    goto :goto_0

    .line 316
    .end local v56    # "formulaEditorKeyboardFunctionalButtonToggle":Landroid/widget/ImageButton;
    :cond_e
    goto :goto_0

    .line 310
    .end local v55    # "formulaEditorKeyboardFunction":Landroid/widget/Button;
    :cond_f
    goto :goto_0

    .line 304
    .end local v54    # "formulaEditorKeyboardDivide":Landroid/widget/Button;
    :cond_10
    goto :goto_0

    .line 298
    .end local v53    # "formulaEditorKeyboardDelete":Landroid/widget/ImageButton;
    :cond_11
    goto :goto_0

    .line 292
    .end local v52    # "formulaEditorKeyboardDecimalMark":Landroid/widget/Button;
    :cond_12
    goto :goto_0

    .line 286
    .end local v51    # "formulaEditorKeyboardData":Landroid/widget/Button;
    :cond_13
    goto :goto_0

    .line 280
    .end local v50    # "formulaEditorKeyboardCompute":Landroid/widget/Button;
    :cond_14
    goto :goto_0

    .line 274
    .end local v49    # "formulaEditorKeyboardColorPicker":Landroid/widget/ImageButton;
    :cond_15
    goto :goto_0

    .line 268
    .end local v48    # "formulaEditorKeyboardBracketOpen":Landroid/widget/Button;
    :cond_16
    goto :goto_0

    .line 262
    .end local v47    # "formulaEditorKeyboardBracketClose":Landroid/widget/Button;
    :cond_17
    goto :goto_0

    .line 256
    .end local v46    # "formulaEditorKeyboard9":Landroid/widget/Button;
    :cond_18
    goto :goto_0

    .line 250
    .end local v45    # "formulaEditorKeyboard8":Landroid/widget/Button;
    :cond_19
    goto :goto_0

    .line 244
    .end local v44    # "formulaEditorKeyboard7":Landroid/widget/Button;
    :cond_1a
    goto :goto_0

    .line 238
    .end local v43    # "formulaEditorKeyboard6":Landroid/widget/Button;
    :cond_1b
    goto :goto_0

    .line 232
    .end local v42    # "formulaEditorKeyboard5":Landroid/widget/Button;
    :cond_1c
    goto :goto_0

    .line 226
    .end local v41    # "formulaEditorKeyboard4":Landroid/widget/Button;
    :cond_1d
    goto :goto_0

    .line 220
    .end local v40    # "formulaEditorKeyboard3":Landroid/widget/Button;
    :cond_1e
    goto :goto_0

    .line 214
    .end local v39    # "formulaEditorKeyboard2":Landroid/widget/Button;
    :cond_1f
    goto :goto_0

    .line 208
    .end local v38    # "formulaEditorKeyboard1":Landroid/widget/Button;
    :cond_20
    nop

    .line 416
    .end local v2    # "formulaEditorKeyboard0":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 186
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 192
    const v0, 0x7f0d0157

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->getRoot()Landroid/widget/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/TableLayout;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/FormulaEditorKeyboardBinding;->rootView:Landroid/widget/TableLayout;

    return-object v0
.end method
