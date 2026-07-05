.class public Landroidx/leanback/widget/picker/TimePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "TimePicker.java"


# static fields
.field private static final AM_INDEX:I = 0x0

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final PM_INDEX:I = 0x1


# instance fields
.field public mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mColAmPmIndex:I

.field public mColHourIndex:I

.field public mColMinuteIndex:I

.field private final mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

.field private mCurrentAmPmIndex:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field public mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field private mIs24hFormat:Z

.field public mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field private mTimePickerFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    invoke-static {p3, v0}, Landroidx/leanback/widget/picker/PickerUtility;->getTimeConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    move-result-object p3

    iput-object p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 6
    sget-object v0, Landroidx/leanback/R$styleable;->lbTimePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget v0, Landroidx/leanback/R$styleable;->lbTimePicker_is24HourFormat:I

    .line 8
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 10
    sget p1, Landroidx/leanback/R$styleable;->lbTimePicker_useCurrentTime:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 11
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumns()V

    .line 12
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumnsRange()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 13
    iget-object p2, p3, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {p1, p2}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    .line 14
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    const/16 p2, 0xc

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 16
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->setAmPmValue()V

    :cond_0
    return-void
.end method

.method private extractTimeFields()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v1, v1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x61

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const-string v4, "a"

    if-ltz v3, :cond_1

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v3, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "mh"

    goto :goto_1

    :cond_3
    const-string v0, "hm"

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAnyOf(C[C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget-char v2, p1, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setAmPmValue()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    :cond_0
    return-void
.end method

.method private updateColumns()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->extractTimeFields()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x7

    new-array v4, v4, [C

    .line 8
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v6, v9, :cond_7

    .line 10
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    const/16 v10, 0x27

    if-ne v9, v10, :cond_3

    if-nez v7, :cond_2

    .line 11
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {v9, v4}, Landroidx/leanback/widget/picker/TimePicker;->isAnyOf(C[C)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eq v9, v8, :cond_6

    .line 14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    move v8, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v10

    if-ne v1, v3, :cond_c

    .line 19
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/picker/Picker;->setSeparators(Ljava/util/List;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 24
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_a

    const/16 v4, 0x48

    if-eq v3, v4, :cond_9

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_8

    .line 26
    new-instance v3, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 28
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    goto :goto_4

    .line 29
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time picker format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_9
    new-instance v3, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 32
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    goto :goto_4

    .line 33
    :cond_a
    new-instance v3, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 35
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 36
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v5}, Landroidx/leanback/widget/picker/TimePicker;->updateMin(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    .line 37
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v10}, Landroidx/leanback/widget/picker/TimePicker;->updateMax(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 38
    :cond_b
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/List;)V

    return-void

    .line 39
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Separators size: "

    .line 40
    invoke-static {v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must equal"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " the size of timeFieldsPattern: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " + 1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method

.method private updateColumnsRange()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/leanback/widget/picker/TimePicker;->updateMin(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    invoke-static {v0, v1}, Landroidx/leanback/widget/picker/TimePicker;->updateMax(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/leanback/widget/picker/TimePicker;->updateMin(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const/16 v3, 0x3b

    invoke-static {v0, v3}, Landroidx/leanback/widget/picker/TimePicker;->updateMax(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0, v1}, Landroidx/leanback/widget/picker/TimePicker;->updateMin(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-static {v0, v2}, Landroidx/leanback/widget/picker/TimePicker;->updateMax(Landroidx/leanback/widget/picker/PickerColumn;I)Z

    :cond_1
    return-void
.end method

.method private static updateMax(Landroidx/leanback/widget/picker/PickerColumn;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static updateMin(Landroidx/leanback/widget/picker/PickerColumn;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBestHourMinutePattern()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v0, v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v1, :cond_0

    const-string v1, "Hma"

    goto :goto_0

    :cond_0
    const-string v1, "hma"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "h:mma"

    :cond_1
    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    rem-int/lit8 v0, v0, 0xc

    return v0

    .line 5
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    return v0
.end method

.method public is24Hour()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    return v0
.end method

.method public isPm()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onColumnValueChanged(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    if-ne p1, v0, :cond_0

    .line 2
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    if-ne p1, v0, :cond_1

    .line 4
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    if-ne p1, v0, :cond_2

    .line 6
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    :goto_0
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid column index."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHour(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    if-ltz p1, :cond_3

    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 1
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 3
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    const/16 v1, 0xc

    if-lt p1, v1, :cond_0

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    .line 5
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-nez p1, :cond_1

    .line 7
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->setAmPmValue()V

    .line 9
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {p0, p1, v1, v0}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    return-void

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hour: "

    const-string v2, " is not in [0-23] range in"

    .line 11
    invoke-static {v1, p1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIs24Hour(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getHour()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getMinute()I

    move-result v1

    .line 4
    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 5
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumns()V

    .line 6
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumnsRange()V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    .line 8
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 9
    invoke-direct {p0}, Landroidx/leanback/widget/picker/TimePicker;->setAmPmValue()V

    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    .line 2
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minute: "

    const-string v2, " is not in [0-59] range."

    .line 4
    invoke-static {v1, p1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
