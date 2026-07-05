.class public Landroidx/leanback/widget/picker/PickerUtility$DateConstant;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/picker/PickerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateConstant"
.end annotation


# instance fields
.field public final days:[Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final months:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    .line 3
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    const-string v0, "%02d"

    .line 8
    invoke-static {v1, p1, v0}, Landroidx/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->days:[Ljava/lang/String;

    return-void
.end method
