.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Ljavax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 3

    .line 1
    check-cast p1, Ljavax/annotation/Nonnegative;

    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 8

    .line 2
    instance-of p1, p2, Ljava/lang/Number;

    if-nez p1, :cond_7

    .line 3
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    .line 4
    :cond_7
    check-cast p2, Ljava/lang/Number;

    .line 5
    instance-of p1, p2, Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_1a

    goto :goto_3f

    :cond_1a
    const/4 v0, 0x0

    goto :goto_3f

    .line 7
    :cond_1c
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_2b

    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1a

    goto :goto_3f

    .line 9
    :cond_2b
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_39

    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1a

    goto :goto_3f

    .line 11
    :cond_39
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p1, :cond_1a

    :goto_3f
    if-eqz v0, :cond_44

    .line 12
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    .line 13
    :cond_44
    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1
.end method
