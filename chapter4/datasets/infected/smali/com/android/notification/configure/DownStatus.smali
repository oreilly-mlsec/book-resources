.class public Lcom/android/notification/configure/DownStatus;
.super Ljava/lang/Object;
.source "DownStatus.java"


# static fields
.field public static BAN_DOWN:I

.field public static DOWN_ERROR:I

.field public static DOWN_NOW:I

.field public static DOWN_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput v0, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    .line 11
    const/4 v0, 0x3

    sput v0, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    .line 13
    const/4 v0, 0x4

    sput v0, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
