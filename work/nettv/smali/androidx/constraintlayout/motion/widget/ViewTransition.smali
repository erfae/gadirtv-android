.class public Landroidx/constraintlayout/motion/widget/ViewTransition;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
    }
.end annotation


# static fields
.field public static final CONSTRAINT_OVERRIDE:Ljava/lang/String; = "ConstraintOverride"

.field public static final CUSTOM_ATTRIBUTE:Ljava/lang/String; = "CustomAttribute"

.field public static final CUSTOM_METHOD:Ljava/lang/String; = "CustomMethod"

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field public static final KEY_FRAME_SET_TAG:Ljava/lang/String; = "KeyFrameSet"

.field public static final ONSTATE_ACTION_DOWN:I = 0x1

.field public static final ONSTATE_ACTION_DOWN_UP:I = 0x3

.field public static final ONSTATE_ACTION_UP:I = 0x2

.field public static final ONSTATE_SHARED_VALUE_SET:I = 0x4

.field public static final ONSTATE_SHARED_VALUE_UNSET:I = 0x5

.field private static final SPLINE_STRING:I = -0x1

.field private static TAG:Ljava/lang/String; = "ViewTransition"

.field private static final UNSET:I = -0x1

.field public static final VIEW_TRANSITION_TAG:Ljava/lang/String; = "ViewTransition"


# instance fields
.field private mClearsTag:I

.field public mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

.field public mContext:Landroid/content/Context;

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisabled:Z

.field private mDuration:I

.field private mId:I

.field private mIfTagNotSet:I

.field private mIfTagSet:I

.field public mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

.field private mOnStateTransition:I

.field private mPathMotionArc:I

.field private mSetsTag:I

.field private mSharedValueCurrent:I

.field private mSharedValueID:I

.field private mSharedValueTarget:I

.field private mTargetId:I

.field private mTargetString:Ljava/lang/String;

.field private mUpDuration:I

.field public mViewTransitionMode:I


# direct methods
.method public static synthetic $r8$lambda$R5MnrVoAl7eqn8MpswIds-XSqNs(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->lambda$applyTransition$0([Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    .line 18
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const-string v4, "ViewTransition"

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v6, :cond_0

    goto/16 :goto_3

    .line 19
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 20
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "CustomAttribute"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "CustomMethod"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_3
    const-string v4, "KeyFrameSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_4
    const-string v4, "ConstraintOverride"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_5

    if-eq v4, v5, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_3

    .line 22
    sget-object v3, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v2, Landroidx/constraintlayout/motion/widget/ViewTransition;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".xml:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 24
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_3

    .line 25
    :cond_4
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    goto :goto_3

    .line 26
    :cond_5
    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-direct {v2, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    goto :goto_3

    .line 27
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 28
    :cond_7
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74f4db17 -> :sswitch_4
        -0x49df9cec -> :sswitch_3
        0x3b205fa -> :sswitch_2
        0x15d883d2 -> :sswitch_1
        0x6acd460b -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$applyTransition$0([Landroid/view/View;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 3
    iget v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    if-eq v0, v2, :cond_1

    .line 5
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_14

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_android_id:I

    if-ne v1, v2, :cond_0

    .line 6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    goto/16 :goto_1

    .line 7
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionTarget:I

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v1, v2, :cond_3

    .line 8
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v2, :cond_1

    .line 9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    if-ne v2, v4, :cond_13

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    goto/16 :goto_1

    .line 13
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    goto/16 :goto_1

    .line 14
    :cond_3
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_onStateTransition:I

    if-ne v1, v2, :cond_4

    .line 15
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    goto/16 :goto_1

    .line 16
    :cond_4
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_transitionDisable:I

    if-ne v1, v2, :cond_5

    .line 17
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    goto/16 :goto_1

    .line 18
    :cond_5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_pathMotionArc:I

    if-ne v1, v2, :cond_6

    .line 19
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    goto/16 :goto_1

    .line 20
    :cond_6
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_duration:I

    if-ne v1, v2, :cond_7

    .line 21
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    goto/16 :goto_1

    .line 22
    :cond_7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_upDuration:I

    if-ne v1, v2, :cond_8

    .line 23
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    goto/16 :goto_1

    .line 24
    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_viewTransitionMode:I

    if-ne v1, v2, :cond_9

    .line 25
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    goto/16 :goto_1

    .line 26
    :cond_9
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_motionInterpolator:I

    if-ne v1, v2, :cond_d

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 28
    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    .line 29
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    if-eq v1, v4, :cond_13

    .line 30
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto/16 :goto_1

    :cond_a
    if-ne v2, v3, :cond_c

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "/"

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    .line 33
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 34
    iput v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto :goto_1

    .line 35
    :cond_b
    iput v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto :goto_1

    .line 36
    :cond_c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    goto :goto_1

    .line 37
    :cond_d
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_setsTag:I

    if-ne v1, v2, :cond_e

    .line 38
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    goto :goto_1

    .line 39
    :cond_e
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_clearsTag:I

    if-ne v1, v2, :cond_f

    .line 40
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    goto :goto_1

    .line 41
    :cond_f
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagSet:I

    if-ne v1, v2, :cond_10

    .line 42
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    goto :goto_1

    .line 43
    :cond_10
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_ifTagNotSet:I

    if-ne v1, v2, :cond_11

    .line 44
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    goto :goto_1

    .line 45
    :cond_11
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValueId:I

    if-ne v1, v2, :cond_12

    .line 46
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    goto :goto_1

    .line 47
    :cond_12
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition_SharedValue:I

    if-ne v1, v2, :cond_13

    .line 48
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    :cond_13
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 49
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transition",
            "view"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setPathMotionArc(I)V

    .line 4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    invoke-virtual {p1, v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setInterpolatorInfo(ILjava/lang/String;I)V

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    .line 10
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/constraintlayout/motion/widget/Key;->setViewId(I)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->addKeyFrame(Landroidx/constraintlayout/motion/widget/KeyFrames;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final varargs applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "layout",
            "fromId",
            "current",
            "views"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    if-eqz v5, :cond_0

    return-void

    .line 2
    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v6, :cond_9

    .line 3
    aget-object v2, v4, v8

    .line 4
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 5
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->setBothStates(Landroid/view/View;)V

    .line 6
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v12

    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    int-to-float v13, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    move-object v10, v3

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    .line 8
    new-instance v10, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    iget v13, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    iget v14, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    iget v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 10
    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    const/4 v4, -0x2

    if-eq v2, v4, :cond_8

    if-eq v2, v7, :cond_7

    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v6, :cond_4

    const/4 v1, 0x4

    if-eq v2, v1, :cond_3

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2

    const/4 v1, 0x6

    if-eq v2, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0

    .line 14
    :cond_4
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    .line 15
    :cond_5
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    .line 16
    :cond_6
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    .line 17
    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    .line 18
    new-instance v2, Landroidx/constraintlayout/motion/widget/ViewTransition$1;

    invoke-direct {v2, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    move-object/from16 v16, v2

    goto :goto_1

    .line 19
    :cond_8
    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_0
    move-object/from16 v16, v1

    .line 20
    :goto_1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    move-object/from16 v11, p1

    move-object v12, v3

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V

    return-void

    :cond_9
    if-ne v5, v9, :cond_d

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v5

    const/4 v6, 0x0

    .line 22
    :goto_2
    array-length v10, v5

    if-ge v6, v10, :cond_d

    .line 23
    aget v10, v5, v6

    if-ne v10, v2, :cond_a

    goto :goto_4

    .line 24
    :cond_a
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v10

    .line 25
    array-length v11, v4

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_c

    aget-object v13, v4, v12

    .line 26
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v13

    .line 27
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-eqz v14, :cond_b

    .line 28
    invoke-virtual {v14, v13}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 29
    iget-object v13, v13, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 30
    :cond_d
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 31
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 32
    array-length v6, v4

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_f

    aget-object v11, v4, v10

    .line 33
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v11

    .line 34
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-eqz v12, :cond_e

    .line 35
    invoke-virtual {v12, v11}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 36
    iget-object v11, v11, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    iget-object v12, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 37
    :cond_f
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 38
    sget v5, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    invoke-virtual {v1, v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 39
    invoke-virtual {v1, v5, v7, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    .line 40
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-direct {v3, v7, v6, v5, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    .line 41
    array-length v2, v4

    :goto_6
    if-ge v8, v2, :cond_10

    aget-object v5, v4, v8

    .line 42
    invoke-direct {v0, v3, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->updateTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 43
    :cond_10
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 44
    new-instance v2, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v4, v9}, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkTags(Landroid/view/View;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    if-ne v4, v1, :cond_2

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    return v0
.end method

.method public getSharedValue()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    return v0
.end method

.method public getSharedValueCurrent()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    return v0
.end method

.method public getSharedValueID()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    return v0
.end method

.method public getStateTransition()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final matchesView(Landroid/view/View;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 4
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    if-nez v1, :cond_4

    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    return-void
.end method

.method public setSharedValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValue"
        }
    .end annotation

    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    return-void
.end method

.method public setSharedValueCurrent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueCurrent"
        }
    .end annotation

    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueCurrent:I

    return-void
.end method

.method public setSharedValueID(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedValueID"
        }
    .end annotation

    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    return-void
.end method

.method public setStateTransition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateTransition"
        }
    .end annotation

    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    return-void
.end method

.method public final supports(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ViewTransition("

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
