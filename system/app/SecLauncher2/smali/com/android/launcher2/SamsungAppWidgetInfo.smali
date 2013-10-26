.class Lcom/android/launcher2/SamsungAppWidgetInfo;
.super Lcom/android/launcher2/HomeItem;
.source "SamsungAppWidgetInfo.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field static final EXTRA_SAMSUNGWIDGET_ID:Ljava/lang/String; = "exta_samsung_widget_id"

.field public static final SAMSUNG_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

.field private static final TAG:Ljava/lang/String; = "SamsungAppWidgetInfo"

.field static final WIDGET_STATE_NONE:I = 0x0

.field static final WIDGET_STATE_PAUSED:I = 0x2

.field static final WIDGET_STATE_RESUMED:I = 0x1


# instance fields
.field intent:Landroid/content/Intent;

.field mItem:Lcom/android/launcher2/SamsungAppWidgetItem;

.field state:I

.field widgetId:J

.field widgetView:Lcom/android/launcher2/SamsungAppWidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->state:I

    .line 66
    return-void
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;J)Lcom/android/launcher2/SamsungAppWidgetInfo;
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher2/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;JLcom/android/launcher2/SamsungAppWidgetInfo;)Lcom/android/launcher2/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;JLcom/android/launcher2/SamsungAppWidgetInfo;)Lcom/android/launcher2/SamsungAppWidgetInfo;
    .locals 23
    .parameter "context"
    .parameter "item"
    .parameter "widgetId"
    .parameter "widgetInfo"

    .prologue
    .line 180
    sget-boolean v19, Lcom/android/launcher2/SamsungAppWidgetInfo;->DEBUGGABLE:Z

    if-eqz v19, :cond_0

    const-string v19, "SamsungAppWidgetInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "makeSamsungWidget()  item: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  widgtInfo: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  widgetId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    const/4 v9, 0x0

    .line 183
    .local v9, info:Lcom/android/launcher2/SamsungAppWidgetInfo;
    if-nez p4, :cond_7

    .line 184
    new-instance v9, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local v9           #info:Lcom/android/launcher2/SamsungAppWidgetInfo;
    invoke-direct {v9}, Lcom/android/launcher2/SamsungAppWidgetInfo;-><init>()V

    .line 185
    .restart local v9       #info:Lcom/android/launcher2/SamsungAppWidgetInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    .line 191
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 192
    .local v5, contentView:Landroid/view/View;
    const/4 v15, 0x0

    .line 193
    .local v15, orientation:I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/ActivityGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v8, p0

    .line 194
    check-cast v8, Landroid/app/ActivityGroup;

    .line 195
    .local v8, group:Landroid/app/ActivityGroup;
    invoke-virtual {v8}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v14

    .line 197
    .local v14, manager:Landroid/app/LocalActivityManager;
    const/4 v3, 0x0

    .line 199
    .local v3, c:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 208
    :goto_1
    if-eqz v3, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/Launcher;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 209
    move-object/from16 v0, p0

    check-cast v0, Lcom/android/launcher2/Launcher;

    move-object v11, v0

    .line 210
    .local v11, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getResOrientation()I

    move-result v15

    .line 212
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 214
    .local v4, config:Landroid/content/res/Configuration;
    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v15, :cond_2

    .line 215
    iput v15, v4, Landroid/content/res/Configuration;->orientation:I

    .line 216
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v11           #launcher:Lcom/android/launcher2/Launcher;
    :cond_2
    :goto_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v19, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v19, "exta_samsung_widget_id"

    iget-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const/16 v16, 0x0

    .line 236
    .local v16, w:Landroid/view/Window;
    :try_start_2
    iget-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v17

    .line 237
    .local v17, widgetActivity:Landroid/app/Activity;
    if-eqz v17, :cond_3

    .line 238
    iget-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 239
    :cond_3
    iget-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v10}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v16

    .line 245
    .end local v17           #widgetActivity:Landroid/app/Activity;
    :goto_3
    if-eqz v16, :cond_8

    const v19, 0x1020002

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 246
    .local v13, mainView:Landroid/view/View;
    :goto_4
    if-eqz v13, :cond_9

    move-object/from16 v19, v13

    check-cast v19, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 248
    :goto_5
    if-eqz v5, :cond_4

    move-object/from16 v19, v13

    .line 249
    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    :cond_4
    if-nez v16, :cond_a

    .line 254
    const-string v19, "SamsungAppWidgetInfo"

    const-string v20, "w is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_5
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/launcher2/SamsungAppWidgetInfo;->setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v3           #c:Landroid/content/Context;
    .end local v8           #group:Landroid/app/ActivityGroup;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #mainView:Landroid/view/View;
    .end local v14           #manager:Landroid/app/LocalActivityManager;
    .end local v16           #w:Landroid/view/Window;
    :cond_6
    new-instance v18, Lcom/android/launcher2/SamsungAppWidgetView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 268
    .local v18, widgetView:Lcom/android/launcher2/SamsungAppWidgetView;
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/launcher2/SamsungAppWidgetItem;->getWidth(I)I

    move-result v19

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/launcher2/SamsungAppWidgetItem;->getHeight(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v19, 0x11

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    if-eqz v5, :cond_c

    .line 272
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Lcom/android/launcher2/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    :goto_7
    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    .line 279
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->mItem:Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 281
    return-object v9

    .line 187
    .end local v5           #contentView:Landroid/view/View;
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v15           #orientation:I
    .end local v18           #widgetView:Lcom/android/launcher2/SamsungAppWidgetView;
    :cond_7
    move-object/from16 v9, p4

    .line 188
    iget-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    move-wide/from16 v0, p2

    iput-wide v0, v9, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    goto/16 :goto_0

    .line 200
    .restart local v3       #c:Landroid/content/Context;
    .restart local v5       #contentView:Landroid/view/View;
    .restart local v8       #group:Landroid/app/ActivityGroup;
    .restart local v14       #manager:Landroid/app/LocalActivityManager;
    .restart local v15       #orientation:I
    :catch_0
    move-exception v7

    .line 201
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 219
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 220
    .local v7, e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 240
    .end local v7           #e1:Ljava/lang/Exception;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v16       #w:Landroid/view/Window;
    :catch_2
    move-exception v6

    .line 241
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "SamsungAppWidgetInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed startActivity("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 245
    .end local v6           #e:Ljava/lang/Exception;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 246
    .restart local v13       #mainView:Landroid/view/View;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 255
    :cond_a
    if-nez v13, :cond_b

    .line 256
    const-string v19, "SamsungAppWidgetInfo"

    const-string v20, "mainView is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 257
    :cond_b
    if-nez v5, :cond_5

    .line 258
    const-string v19, "SamsungAppWidgetInfo"

    const-string v20, "contentView is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 274
    .end local v3           #c:Landroid/content/Context;
    .end local v8           #group:Landroid/app/ActivityGroup;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #mainView:Landroid/view/View;
    .end local v14           #manager:Landroid/app/LocalActivityManager;
    .end local v16           #w:Landroid/view/Window;
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v18       #widgetView:Lcom/android/launcher2/SamsungAppWidgetView;
    :cond_c
    sget-boolean v19, Lcom/android/launcher2/SamsungAppWidgetInfo;->DEBUGGABLE:Z

    if-eqz v19, :cond_d

    const-string v19, "SamsungAppWidgetInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Adding widget error view for widget  item: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  widgtInfo: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  widgetId: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/launcher2/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public fireOnPause(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 100
    iget v7, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p1, :cond_0

    instance-of v7, p1, Landroid/app/ActivityGroup;

    if-eqz v7, :cond_0

    iget-wide v7, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 102
    check-cast v0, Landroid/app/ActivityGroup;

    .line 103
    .local v0, ag:Landroid/app/ActivityGroup;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 105
    .local v1, app:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 108
    .local v2, cl:[Ljava/lang/Class;
    const/4 v6, 0x0

    .line 109
    .local v6, widgetObserver:Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 110
    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    aget-object v6, v2, v4

    .line 109
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    :cond_3
    if-eqz v6, :cond_0

    .line 117
    :try_start_0
    const-string v7, "fireOnPause"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 118
    .local v5, m:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 119
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->state:I

    .line 120
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 122
    .end local v5           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 123
    .local v3, e:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 125
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 127
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 129
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 131
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public fireOnResume(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 138
    iget v7, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->state:I

    if-ne v7, v8, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-eqz p1, :cond_0

    instance-of v7, p1, Landroid/app/ActivityGroup;

    if-eqz v7, :cond_0

    iget-wide v7, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 140
    check-cast v0, Landroid/app/ActivityGroup;

    .line 141
    .local v0, ag:Landroid/app/ActivityGroup;
    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 143
    .local v1, app:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 146
    .local v2, cl:[Ljava/lang/Class;
    const/4 v6, 0x0

    .line 147
    .local v6, widgetObserver:Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 148
    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    aget-object v6, v2, v4

    .line 147
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_3
    if-eqz v6, :cond_0

    .line 155
    :try_start_0
    const-string v7, "fireOnResume"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 156
    .local v5, m:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 157
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->state:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 160
    .end local v5           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 161
    .local v3, e:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 163
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 165
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 167
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 169
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 81
    iget-object v1, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, uri:Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "appWidgetId"

    iget-wide v2, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    return-void

    .line 81
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "themeName"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetView:Lcom/android/launcher2/SamsungAppWidgetView;

    .line 288
    return-void
.end method
