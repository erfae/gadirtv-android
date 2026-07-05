.class public Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/picker/PickerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeConstant"
.end annotation


# instance fields
.field public final ampm:[Ljava/lang/String;

.field public final hours12:[Ljava/lang/String;

.field public final hours24:[Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final minutes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 3
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xc

    const-string v2, "%02d"

    .line 4
    invoke-static {v0, v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->hours12:[Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x17

    .line 5
    invoke-static {v0, v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    const/16 v1, 0x3b

    .line 6
    invoke-static {v0, v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    return-void
.end method
